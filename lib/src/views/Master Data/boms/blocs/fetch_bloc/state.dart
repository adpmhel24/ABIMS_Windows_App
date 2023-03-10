part of 'bloc.dart';

class FetchBoMsState extends Equatable {
  final FetchingStatus status;
  final List<BoMModel> datas;
  final String message;

  const FetchBoMsState({
    this.status = FetchingStatus.init,
    this.datas = const [],
    this.message = "",
  });

  FetchBoMsState copyWith({
    FetchingStatus? status,
    List<BoMModel>? datas,
    String? message,
  }) =>
      FetchBoMsState(
          status: status ?? this.status,
          datas: datas ?? this.datas,
          message: message ?? this.message);
  @override
  List<Object?> get props => [status, datas, message];
}
