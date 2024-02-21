// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentials_loader.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Credentials _$CredentialsFromJson(Map<String, dynamic> json) {
  return _Credentials.fromJson(json);
}

/// @nodoc
mixin _$Credentials {
  String get appName => throw _privateConstructorUsedError;
  String get apiBaseUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialsCopyWith<Credentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsCopyWith<$Res> {
  factory $CredentialsCopyWith(
          Credentials value, $Res Function(Credentials) then) =
      _$CredentialsCopyWithImpl<$Res, Credentials>;
  @useResult
  $Res call({String appName, String apiBaseUrl});
}

/// @nodoc
class _$CredentialsCopyWithImpl<$Res, $Val extends Credentials>
    implements $CredentialsCopyWith<$Res> {
  _$CredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? apiBaseUrl = null,
  }) {
    return _then(_value.copyWith(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CredentialsImplCopyWith<$Res>
    implements $CredentialsCopyWith<$Res> {
  factory _$$CredentialsImplCopyWith(
          _$CredentialsImpl value, $Res Function(_$CredentialsImpl) then) =
      __$$CredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appName, String apiBaseUrl});
}

/// @nodoc
class __$$CredentialsImplCopyWithImpl<$Res>
    extends _$CredentialsCopyWithImpl<$Res, _$CredentialsImpl>
    implements _$$CredentialsImplCopyWith<$Res> {
  __$$CredentialsImplCopyWithImpl(
      _$CredentialsImpl _value, $Res Function(_$CredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? apiBaseUrl = null,
  }) {
    return _then(_$CredentialsImpl(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$CredentialsImpl implements _Credentials {
  const _$CredentialsImpl({required this.appName, required this.apiBaseUrl});

  factory _$CredentialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CredentialsImplFromJson(json);

  @override
  final String appName;
  @override
  final String apiBaseUrl;

  @override
  String toString() {
    return 'Credentials(appName: $appName, apiBaseUrl: $apiBaseUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialsImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.apiBaseUrl, apiBaseUrl) ||
                other.apiBaseUrl == apiBaseUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appName, apiBaseUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialsImplCopyWith<_$CredentialsImpl> get copyWith =>
      __$$CredentialsImplCopyWithImpl<_$CredentialsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialsImplToJson(
      this,
    );
  }
}

abstract class _Credentials implements Credentials {
  const factory _Credentials(
      {required final String appName,
      required final String apiBaseUrl}) = _$CredentialsImpl;

  factory _Credentials.fromJson(Map<String, dynamic> json) =
      _$CredentialsImpl.fromJson;

  @override
  String get appName;
  @override
  String get apiBaseUrl;
  @override
  @JsonKey(ignore: true)
  _$$CredentialsImplCopyWith<_$CredentialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
