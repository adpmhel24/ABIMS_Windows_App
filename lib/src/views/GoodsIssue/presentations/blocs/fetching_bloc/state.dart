part of 'bloc.dart';

class FetchingGoodsIssueState extends Equatable {
  final FetchingStatus status;
  final PaginatedResultGoodsIssue result;
  final String statusMessage;

  const FetchingGoodsIssueState(
      {this.status = FetchingStatus.init,
      this.result = const PaginatedResultGoodsIssue(),
      this.statusMessage = ""});

  FetchingGoodsIssueState copyWith({
    FetchingStatus? status,
    PaginatedResultGoodsIssue? result,
    String? statusMessage,
  }) =>
      FetchingGoodsIssueState(
          status: status ?? this.status,
          result: result ?? this.result,
          statusMessage: statusMessage ?? this.statusMessage);
  @override
  List<Object?> get props => [status, result, statusMessage];
}
