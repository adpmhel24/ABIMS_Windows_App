part of 'bloc.dart';

abstract class FetchingAdjustmentOutEvent extends Equatable {
  const FetchingAdjustmentOutEvent();

  @override
  List<Object?> get props => [];
}

class LoadAllInvAdjOut extends FetchingAdjustmentOutEvent {
  final Map<String, dynamic>? params;

  const LoadAllInvAdjOut([this.params]);

  @override
  List<Object?> get props => [params];
}
