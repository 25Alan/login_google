import 'package:firebase_auth/firebase_auth.dart';

abstract interface class LoginGoogleRepository {
  Future<UserCredential> signInWithGoogle();
}
