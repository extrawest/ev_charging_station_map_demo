// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResultError _$SearchResultErrorFromJson(Map<String, dynamic> json) {
  return _SearchResultError.fromJson(json);
}

/// @nodoc
mixin _$SearchResultError {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultErrorCopyWith<SearchResultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultErrorCopyWith<$Res> {
  factory $SearchResultErrorCopyWith(
          SearchResultError value, $Res Function(SearchResultError) then) =
      _$SearchResultErrorCopyWithImpl<$Res, SearchResultError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SearchResultErrorCopyWithImpl<$Res, $Val extends SearchResultError>
    implements $SearchResultErrorCopyWith<$Res> {
  _$SearchResultErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultErrorImplCopyWith<$Res>
    implements $SearchResultErrorCopyWith<$Res> {
  factory _$$SearchResultErrorImplCopyWith(_$SearchResultErrorImpl value,
          $Res Function(_$SearchResultErrorImpl) then) =
      __$$SearchResultErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchResultErrorImplCopyWithImpl<$Res>
    extends _$SearchResultErrorCopyWithImpl<$Res, _$SearchResultErrorImpl>
    implements _$$SearchResultErrorImplCopyWith<$Res> {
  __$$SearchResultErrorImplCopyWithImpl(_$SearchResultErrorImpl _value,
      $Res Function(_$SearchResultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchResultErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultErrorImpl implements _SearchResultError {
  _$SearchResultErrorImpl({required this.message});

  factory _$SearchResultErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultErrorImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SearchResultError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultErrorImplCopyWith<_$SearchResultErrorImpl> get copyWith =>
      __$$SearchResultErrorImplCopyWithImpl<_$SearchResultErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultErrorImplToJson(
      this,
    );
  }
}

abstract class _SearchResultError implements SearchResultError {
  factory _SearchResultError({required final String message}) =
      _$SearchResultErrorImpl;

  factory _SearchResultError.fromJson(Map<String, dynamic> json) =
      _$SearchResultErrorImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultErrorImplCopyWith<_$SearchResultErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
