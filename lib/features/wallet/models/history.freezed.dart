// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

History _$HistoryFromJson(Map<String, dynamic> json) {
  return _History.fromJson(json);
}

/// @nodoc
mixin _$History {
  double? get bill => throw _privateConstructorUsedError;
  double? get consumedKwh => throw _privateConstructorUsedError;
  DateTime? get datetimeFinished => throw _privateConstructorUsedError;
  DateTime? get datetimeStarted => throw _privateConstructorUsedError;
  String? get stationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res, History>;
  @useResult
  $Res call(
      {double? bill,
      double? consumedKwh,
      DateTime? datetimeFinished,
      DateTime? datetimeStarted,
      String? stationName});
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res, $Val extends History>
    implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bill = freezed,
    Object? consumedKwh = freezed,
    Object? datetimeFinished = freezed,
    Object? datetimeStarted = freezed,
    Object? stationName = freezed,
  }) {
    return _then(_value.copyWith(
      bill: freezed == bill
          ? _value.bill
          : bill // ignore: cast_nullable_to_non_nullable
              as double?,
      consumedKwh: freezed == consumedKwh
          ? _value.consumedKwh
          : consumedKwh // ignore: cast_nullable_to_non_nullable
              as double?,
      datetimeFinished: freezed == datetimeFinished
          ? _value.datetimeFinished
          : datetimeFinished // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      datetimeStarted: freezed == datetimeStarted
          ? _value.datetimeStarted
          : datetimeStarted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stationName: freezed == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryImplCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$$HistoryImplCopyWith(
          _$HistoryImpl value, $Res Function(_$HistoryImpl) then) =
      __$$HistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? bill,
      double? consumedKwh,
      DateTime? datetimeFinished,
      DateTime? datetimeStarted,
      String? stationName});
}

/// @nodoc
class __$$HistoryImplCopyWithImpl<$Res>
    extends _$HistoryCopyWithImpl<$Res, _$HistoryImpl>
    implements _$$HistoryImplCopyWith<$Res> {
  __$$HistoryImplCopyWithImpl(
      _$HistoryImpl _value, $Res Function(_$HistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bill = freezed,
    Object? consumedKwh = freezed,
    Object? datetimeFinished = freezed,
    Object? datetimeStarted = freezed,
    Object? stationName = freezed,
  }) {
    return _then(_$HistoryImpl(
      bill: freezed == bill
          ? _value.bill
          : bill // ignore: cast_nullable_to_non_nullable
              as double?,
      consumedKwh: freezed == consumedKwh
          ? _value.consumedKwh
          : consumedKwh // ignore: cast_nullable_to_non_nullable
              as double?,
      datetimeFinished: freezed == datetimeFinished
          ? _value.datetimeFinished
          : datetimeFinished // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      datetimeStarted: freezed == datetimeStarted
          ? _value.datetimeStarted
          : datetimeStarted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stationName: freezed == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryImpl implements _History {
  const _$HistoryImpl(
      {this.bill,
      this.consumedKwh,
      this.datetimeFinished,
      this.datetimeStarted,
      this.stationName});

  factory _$HistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryImplFromJson(json);

  @override
  final double? bill;
  @override
  final double? consumedKwh;
  @override
  final DateTime? datetimeFinished;
  @override
  final DateTime? datetimeStarted;
  @override
  final String? stationName;

  @override
  String toString() {
    return 'History(bill: $bill, consumedKwh: $consumedKwh, datetimeFinished: $datetimeFinished, datetimeStarted: $datetimeStarted, stationName: $stationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryImpl &&
            (identical(other.bill, bill) || other.bill == bill) &&
            (identical(other.consumedKwh, consumedKwh) ||
                other.consumedKwh == consumedKwh) &&
            (identical(other.datetimeFinished, datetimeFinished) ||
                other.datetimeFinished == datetimeFinished) &&
            (identical(other.datetimeStarted, datetimeStarted) ||
                other.datetimeStarted == datetimeStarted) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bill, consumedKwh,
      datetimeFinished, datetimeStarted, stationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      __$$HistoryImplCopyWithImpl<_$HistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryImplToJson(
      this,
    );
  }
}

abstract class _History implements History {
  const factory _History(
      {final double? bill,
      final double? consumedKwh,
      final DateTime? datetimeFinished,
      final DateTime? datetimeStarted,
      final String? stationName}) = _$HistoryImpl;

  factory _History.fromJson(Map<String, dynamic> json) = _$HistoryImpl.fromJson;

  @override
  double? get bill;
  @override
  double? get consumedKwh;
  @override
  DateTime? get datetimeFinished;
  @override
  DateTime? get datetimeStarted;
  @override
  String? get stationName;
  @override
  @JsonKey(ignore: true)
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
