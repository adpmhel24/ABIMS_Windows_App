part of 'bloc.dart';

class LoginState extends Equatable {
  final FormzStatus status;
  final FormzString username;
  final FormzString password;
  final String? message;

  const LoginState({
    this.status = FormzStatus.pure,
    this.username = const FormzString.pure(),
    this.password = const FormzString.pure(),
    this.message = '',
  });

  LoginState copyWith({
    FormzStatus? status,
    FormzString? username,
    FormzString? password,
    String? message,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [
        status,
        username,
        password,
      ];
}
