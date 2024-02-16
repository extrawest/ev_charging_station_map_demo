import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../common/services/logger.dart';



class AuthService {
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  late final FirebaseAuth _firebaseAuth;

  AuthService() {
    initializeFirebase();
  }

  Future<void> initializeFirebase() async {
    final FirebaseApp app = await Firebase.initializeApp();
    _firebaseAuth = FirebaseAuth.instanceFor(app: app);
  }

  Future<User?> signInWithGoogle() async {
    User? firebaseUser;

    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'https://www.googleapis.com/auth/drive',
      ],
    );

    await _googleSignIn.signIn();
    try {
      final isSignedIn = await _googleSignIn.isSignedIn();
      log.fine('isSignedIn>>>> $isSignedIn');
      if (isSignedIn) {
        firebaseUser = _firebaseAuth.currentUser;
      } else {
        final googleSignedUser = await _googleSignIn.signIn();

        final GoogleSignInAuthentication? googleAuth =
        await googleSignedUser?.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );

        firebaseUser = (await _firebaseAuth.signInWithCredential(credential)).user;
      }
      return firebaseUser;
    } on FirebaseAuthException catch (e) {
      throw Exception('Authorization error :$e');
    }
  }

  Future<bool> signOutWithGoogle() async {
    try {
      // await _googleSignIn.signOut();
      return true;
    } on FirebaseAuthException catch (e) {
      throw Exception('Sign out  error :$e');
    }
  }
}


