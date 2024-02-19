import 'package:firebase_auth/firebase_auth.dart';

import '../services/auth_service.dart';

abstract class AuthRepository {
  AuthRepository();

  Future<User?> signIn();

  Future<bool> signOut();
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthService googleAuth;

  @override
  AuthRepositoryImpl({required this.googleAuth});

  @override
  Future<User?> signIn() async {
    return await googleAuth.signInWithGoogle();
  }

  @override
  Future<bool> signOut() async {
    return await googleAuth.signOutGoogle();
  }
}
