import 'package:equatable/equatable.dart';

abstract class PositionsEvent extends Equatable {
  const PositionsEvent();
  @override
  List<Object> get props => [];
}

class GetPositionsList extends PositionsEvent {}
