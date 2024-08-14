import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_pc/login/domain/repositories/login_google_repository.dart';

class LoginGoogleUseCase {
  final LoginGoogleRepository _loginGoogleRepository;

  LoginGoogleUseCase({required LoginGoogleRepository loginGoogleRepository})
      : _loginGoogleRepository = loginGoogleRepository;

  Future<UserCredential> signInWithGoogle() async {
    return await _loginGoogleRepository.signInWithGoogle();
  }
}
