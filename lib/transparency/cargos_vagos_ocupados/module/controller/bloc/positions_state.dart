import 'package:equatable/equatable.dart';

import '../../model/positions_model.dart';

abstract class PositionState extends Equatable {
  const PositionState();
  @override
  List<Object> get props => [];
}

class PositionsInitialState extends PositionState {}

class PositionsLoadingState extends PositionState {}

class PositionsLoadedState extends PositionState {
  final Positions positions;
  const PositionsLoadedState({required this.positions});
}

class PositionsErrorState extends PositionState {
  final String message;
  const PositionsErrorState({required this.message});
  @override
  List<Object> get props => [message];
}
