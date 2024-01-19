import 'package:dio/dio.dart';

import '../../common/services/secure_cache.dart';
import 'dio_token_request_retrier.dart';

const timeOut = 10000;

class RefreshTokenInterceptor extends Interceptor with SecureStorageMixin {
  final DioTokenRequestRetrier requestRetrier;

  RefreshTokenInterceptor({required this.requestRetrier});

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['authorization'] = 'Bearer:${await readAuthToken()}';
    return handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (await _shouldRefreshToken(err)) {
      if (await requestRetrier.handleTokensChange()) {
        if (err.requestOptions.data is FormData) {
          await retryFormDataRequest(err, handler);
        } else {
          return handler.resolve(await requestRetrier.retryRequest(err.requestOptions));
        }
      } else {
        deleteTokens();
      }
    }
    return handler.next(err);
  }

  Future<bool> _shouldRefreshToken(DioError err) async {
    return err.response?.statusCode == 401 && await isStayLogged();
  }

  ///This method is used for retry requests that contain files (eg photos)
  Future<void> retryFormDataRequest(DioError err, ErrorInterceptorHandler handler) async {
    final formData = FormData();
    formData.fields.addAll(err.requestOptions.data.fields);
    for (final MapEntry<String,dynamic> mapFile in err.requestOptions.data.files) {
      formData.files.add(MapEntry(mapFile.key,
          MultipartFile.fromFileSync(err.requestOptions.headers['path'], filename: mapFile.value.filename),),);
    }
    final options = RequestOptions(
        data: formData,
        method: err.requestOptions.method,
        sendTimeout: const Duration(milliseconds: timeOut),
        receiveTimeout: const Duration(milliseconds: timeOut),
        extra: err.requestOptions.extra,
        headers: err.requestOptions.headers,
        path: err.requestOptions.path,);

    return handler.resolve(await requestRetrier.retryRequest(options));
  }
}
