part of 'bloc.dart';

abstract class InvAdjOutUpdateSapEvent extends Equatable {
  const InvAdjOutUpdateSapEvent();
  @override
  List<Object?> get props => [];
}

class ButtonSubmitted extends InvAdjOutUpdateSapEvent {
  final List<int> ids;
  final int sapNumber;
  const ButtonSubmitted({
    required this.ids,
    required this.sapNumber,
  });
  @override
  List<Object?> get props => [ids, sapNumber];
}
