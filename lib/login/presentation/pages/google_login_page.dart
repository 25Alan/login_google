import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_pc/login/domain/use_cases/login_google_use_case.dart';
import 'package:test_pc/login/presentation/bloc/google_login_bloc.dart';

import '../widgets/login_google_button.dart';

class GoogleLoginPage extends StatelessWidget {
  const GoogleLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            GoogleLoginBloc(GetIt.instance.get<LoginGoogleUseCase>()),
        child: BlocListener<GoogleLoginBloc, GoogleLoginState>(
          listener: (context, state) {
            if (state is GoogleLoginSuccess) {
              context.go('/home');
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text('Ingreso realizado correctamente')));
            }
            if (state is GoogleLoginFailure) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(state.errorMessage)));
            }
          },
          child: Center(
              child: SizedBox(
                  width: size * 0.7, child: const GoogleLoginButton())),
        ),
      ),
    );
  }
}
