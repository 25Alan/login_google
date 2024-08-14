import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/google_login_bloc.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle().copyWith(
          textStyle:
              const WidgetStatePropertyAll<TextStyle>(TextStyle(fontSize: 25))),
      onPressed: () =>
          BlocProvider.of<GoogleLoginBloc>(context).add(SignInWithGoogle()),
      child: const Text("Login"),
    );
  }
}
