part of 'google_login_bloc.dart';

@immutable
sealed class GoogleLoginState {}

final class LoginInitial extends GoogleLoginState {}

final class GoogleLoginSuccess extends GoogleLoginState {}

final class GoogleLoginFailure extends GoogleLoginState {
  final String errorMessage;

  GoogleLoginFailure({required this.errorMessage});
}
