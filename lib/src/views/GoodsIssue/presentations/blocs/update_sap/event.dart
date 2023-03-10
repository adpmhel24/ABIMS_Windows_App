part of 'bloc.dart';

abstract class GoodsIssueUpdateSapEvent extends Equatable {
  const GoodsIssueUpdateSapEvent();
  @override
  List<Object?> get props => [];
}

class ButtonSubmitted extends GoodsIssueUpdateSapEvent {
  final List<int> ids;
  final int sapNumber;
  const ButtonSubmitted({
    required this.ids,
    required this.sapNumber,
  });
  @override
  List<Object?> get props => [ids, sapNumber];
}
