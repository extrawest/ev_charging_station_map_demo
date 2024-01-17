import '../../../common/services/services.dart';
import '../../../network/api_client.dart';
import '../models/post.dart';

const int defaultPostsLimit = 20;
const String postsPath = '/posts';

abstract class PostsApiService {
  PostsApiService();

  Future<List<Post>> fetchPosts({int startIndex = 0});
}

class PostsApiServiceImpl implements PostsApiService {
  final ApiClient _apiClient;

  PostsApiServiceImpl(this._apiClient);

  @override
  Future<List<Post>> fetchPosts({int startIndex = 0}) async {
    try {
      final postsListResponse = await _apiClient.get(
        postsPath,
        params: {'_start': '$startIndex'},
      );
      return postsListResponse
          .map<Post>((json) => Post.fromJson(json))
          .toList();
    } catch (e) {
      log.severe('_fetchPosts error: $e');
      rethrow;
    }
  }
}
