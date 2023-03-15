part of 'bloc.dart';

class InvAdjOutUpdateSapState extends Equatable {
  final FormzStatus status;
  final String statusMessage;
  const InvAdjOutUpdateSapState(
      {this.status = FormzStatus.pure, this.statusMessage = ""});

  InvAdjOutUpdateSapState copyWith({
    FormzStatus? status,
    String? statusMessage,
  }) {
    return InvAdjOutUpdateSapState(
        status: status ?? this.status,
        statusMessage: statusMessage ?? this.statusMessage);
  }

  @override
  List<Object?> get props => [status, statusMessage];
}
