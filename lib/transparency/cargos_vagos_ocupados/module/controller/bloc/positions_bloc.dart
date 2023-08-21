import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvc_arch/transparency/cargos_vagos_ocupados/module/controller/bloc/positions_event.dart';
import 'package:mvc_arch/transparency/cargos_vagos_ocupados/module/controller/bloc/positions_state.dart';

import '../api/api_repository.dart';

class PositionsBloc extends Bloc<PositionsEvent, PositionState> {
  PositionsBloc() : super(PositionsInitialState()) {
    final ApiRepository apiRepository = ApiRepository();
    on<GetPositionsList>((event, emit) async {
      try {
        emit(PositionsLoadingState());
        final positions = await apiRepository.fetchPositions();
        emit(PositionsLoadedState(positions: positions));
      } catch (e) {
        emit(PositionsErrorState(message: e.toString()));
      }
    });
  }
}
