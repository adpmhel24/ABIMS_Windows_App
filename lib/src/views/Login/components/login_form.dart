import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

import '../../../global_bloc/bloc_auth/bloc.dart';
import '../../../utils/constant.dart';
import '../bloc/bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isPasswordHidden = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InfoLabel(
          label: "Username",
          child: TextFormBox(
            autovalidateMode: AutovalidateMode.always,
            textInputAction: TextInputAction.next,
            controller: _usernameController,
            autofocus: true,
            maxLines: 1,
            onChanged: (_) => context.read<LoginBloc>().add(
                  UsernameChanged(_usernameController.text),
                ),
            validator: (_) {
              return (context.watch<LoginBloc>().state.username.invalid)
                  ? "Required field"
                  : null;
            },
          ),
        ),
        const SizedBox(height: Constant.minPadding),
        InfoLabel(
          label: "Password",
          child: TextFormBox(
            autovalidateMode: AutovalidateMode.always,
            textInputAction: TextInputAction.send,
            keyboardType: TextInputType.visiblePassword,
            controller: _passwordController,
            obscureText: isPasswordHidden,
            placeholder: "Password",
            suffix: IconButton(
              icon: Icon(
                isPasswordHidden ? FluentIcons.lock : FluentIcons.unlock,
              ),
              onPressed: () =>
                  setState(() => isPasswordHidden = !isPasswordHidden),
            ),
            onChanged: (_) => context.read<LoginBloc>().add(
                  PasswordChanged(_passwordController.text),
                ),
            onFieldSubmitted: (_) {
              if (context.read<LoginBloc>().state.status.isValidated) {
                context.read<AuthBloc>().add(
                      LoginSubmitted(
                        username:
                            context.read<LoginBloc>().state.username.value,
                        password:
                            context.read<LoginBloc>().state.password.value,
                      ),
                    );
              }
            },
            validator: (_) {
              return (context.watch<LoginBloc>().state.password.invalid)
                  ? "Invalid password"
                  : null;
            },
          ),
        ),
        const SizedBox(height: Constant.minPadding * 2),
        SizedBox(
          width: double.infinity,
          height: 40,
          child: FilledButton(
            onPressed: context.watch<LoginBloc>().state.status.isValidated
                ? () {
                    context.read<AuthBloc>().add(
                          LoginSubmitted(
                            username:
                                context.read<LoginBloc>().state.username.value,
                            password:
                                context.read<LoginBloc>().state.password.value,
                          ),
                        );
                  }
                : null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/sign_in.svg",
                  height: 16,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: Constant.minPadding,
                ),
                const Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: .5,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
