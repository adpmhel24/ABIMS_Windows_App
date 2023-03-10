part of 'bloc.dart';

abstract class FetchingGoodsIssueEvent extends Equatable {
  const FetchingGoodsIssueEvent();

  @override
  List<Object?> get props => [];
}

class LoadAllGoodsIssue extends FetchingGoodsIssueEvent {
  final Map<String, dynamic>? params;

  const LoadAllGoodsIssue([this.params]);

  @override
  List<Object?> get props => [params];
}
