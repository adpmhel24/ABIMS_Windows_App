part of 'bloc.dart';

class GoodsIssueUpdateSapState extends Equatable {
  final FormzStatus status;
  final String statusMessage;
  const GoodsIssueUpdateSapState(
      {this.status = FormzStatus.pure, this.statusMessage = ""});

  GoodsIssueUpdateSapState copyWith({
    FormzStatus? status,
    String? statusMessage,
  }) {
    return GoodsIssueUpdateSapState(
        status: status ?? this.status,
        statusMessage: statusMessage ?? this.statusMessage);
  }

  @override
  List<Object?> get props => [status, statusMessage];
}
