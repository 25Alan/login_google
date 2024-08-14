import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pc/login/domain/use_cases/login_google_use_case.dart';

part 'google_login_event.dart';
part 'google_login_state.dart';

class GoogleLoginBloc extends Bloc<LoginGoogleEvent, GoogleLoginState> {
  final LoginGoogleUseCase _loginGoogleUseCase;

  GoogleLoginBloc(this._loginGoogleUseCase) : super(LoginInitial()) {
    on<SignInWithGoogle>(_onGoToLoginGoogle);
  }

  FutureOr<void> _onGoToLoginGoogle(event, emit) async {
    try {
      await _loginGoogleUseCase.signInWithGoogle();
      emit(GoogleLoginSuccess());
    } on FirebaseAuthException catch (e) {
      //En este caso no doy uso de la variable de excepción 'e'
      emit(GoogleLoginFailure(errorMessage: 'No se pudo realizar el ingreso'));
    }
  }
}
