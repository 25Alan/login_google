import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_pc/login/domain/repositories/login_google_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginGoogleRepositoryImpl implements LoginGoogleRepository {
  @override
  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      googleUser == null ? throw Exception('Google sign-in failed') : null;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      throw Exception('Failed to sign in with Google: ${e.toString()}');
    }
  }
}
