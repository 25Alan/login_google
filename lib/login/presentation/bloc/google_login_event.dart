part of 'google_login_bloc.dart';

@immutable
sealed class LoginGoogleEvent {}

class SignInWithGoogle extends LoginGoogleEvent {}
