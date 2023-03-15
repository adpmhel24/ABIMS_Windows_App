part of 'bloc.dart';

class FetchingAdjustmentOutState extends Equatable {
  final FetchingStatus status;
  final PaginatedResultInvAdjOut result;
  final String statusMessage;

  const FetchingAdjustmentOutState(
      {this.status = FetchingStatus.init,
      this.result = const PaginatedResultInvAdjOut(),
      this.statusMessage = ""});

  FetchingAdjustmentOutState copyWith({
    FetchingStatus? status,
    PaginatedResultInvAdjOut? result,
    String? statusMessage,
  }) =>
      FetchingAdjustmentOutState(
          status: status ?? this.status,
          result: result ?? this.result,
          statusMessage: statusMessage ?? this.statusMessage);
  @override
  List<Object?> get props => [status, result, statusMessage];
}
