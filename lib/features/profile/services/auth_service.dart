import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../common/services/logger.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User?> signInWithGoogle() async {
    User? firebaseUser;
    GoogleSignInAccount? googleUser;

    try {
      googleUser = await _googleSignIn.signIn();

      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,

        );

        firebaseUser = (await _auth.signInWithCredential(credential)).user;
        log.fine('User signed in with credential: $firebaseUser');
      }
      return firebaseUser;
    } on FirebaseAuthException catch (e) {
      log.fine('Failed to sign in with Google: $e');
      throw Exception('Authorization error :$e');
    }
  }



  Future<bool> signOutGoogle() async {
    try {
      await _auth.signOut();

      await _googleSignIn.signOut();
      log.fine('User signed out from Google');
      return true;
    } on FirebaseAuthException catch (e) {
      log.fine('Failed to sign out from Google: $e');
      throw Exception('Unauthorization error :$e');
    }
  }
}
