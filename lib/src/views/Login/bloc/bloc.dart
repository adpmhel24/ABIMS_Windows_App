import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../utils/formz_string.dart';

part 'event.dart';
part 'state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
  }

  void _onUsernameChanged(UsernameChanged event, Emitter<LoginState> emit) {
    final username = FormzString.dirty(event.value);

    emit(
      state.copyWith(
        username: username,
        status: Formz.validate([username, state.password]),
      ),
    );
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    final password = FormzString.dirty(event.value);

    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([password, state.username]),
      ),
    );
  }
}
