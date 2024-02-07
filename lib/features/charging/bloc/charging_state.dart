part of 'charging_cubit.dart';

@freezed
class ChargingState with _$ChargingState {
  const factory ChargingState.initial() = _Initial;

  const factory ChargingState.loading() = Loadinng;

  const factory ChargingState.error({required String message}) = Error;

  const factory ChargingState.loaded({
    required ChargingInfo chargingInfo,
  }) = Loaded;
}
