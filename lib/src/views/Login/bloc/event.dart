part of 'bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class UsernameChanged extends LoginEvent {
  final String value;
  const UsernameChanged(this.value);
  @override
  List<Object> get props => [value];
}

class PasswordChanged extends LoginEvent {
  final String value;
  const PasswordChanged(this.value);
  @override
  List<Object> get props => [value];
}
