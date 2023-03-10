part of 'bloc.dart';

abstract class FetchBoMsEvent extends Equatable {
  const FetchBoMsEvent();
  @override
  List<Object?> get props => [];
}

class LoadBoMs extends FetchBoMsEvent {}

class SearchByKeyword extends FetchBoMsEvent {
  final String value;

  const SearchByKeyword(this.value);

  @override
  List<Object?> get props => [value];
}
