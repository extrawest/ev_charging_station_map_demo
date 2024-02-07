import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/charging_info.dart';
import '../repositories/charging_repository.dart';

part 'charging_cubit.freezed.dart';
part 'charging_state.dart';

class ChargingCubit extends Cubit<ChargingState> {
  final ChargingRepository chargingRepository;
  ChargingCubit({required this.chargingRepository}) : super(const ChargingState.initial());
  Future<void> fetchChargingInfo() async {
    emit(const ChargingState.loading());
    try {
      final chargingResponse = await chargingRepository.fetchChargingInfo();

      emit(
        ChargingState.loaded(
          chargingInfo: chargingResponse,
        ),
      );
    } catch (e) {
      emit(ChargingState.error(message: e.toString()));
    }
  }
}
