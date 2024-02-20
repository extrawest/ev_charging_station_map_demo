import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;

  AuthBloc({required AuthService authService})
      : _authService = authService,
        super(const AuthUnautorized()) {
    on<AuthInitEvent>(_onInit);
    on<AuthSignInEvent>(_onSignIn);
    on<AuthSignOutEvent>(_onSignOut);
  }

  Future<void> _onInit(AuthInitEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final user = auth.currentUser;

      if (user != null) {
        emit(AuthAutorized(user));
      } else {
        emit(const AuthUnautorized());
      }
    } catch (e) {
      emit(AuthError('Authorization error :$e'));
    }
  }

  Future<void> _onSignIn(
    AuthSignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthLoading());
    try {
      final user = await _authService.signInWithGoogle();

      if (user != null) {
        emit(AuthAutorized(user));
      } else {
        emit(const AuthError('Authorization error'));
      }
    } catch (e) {
      emit(AuthError('Authorization error :$e'));
    }
  }

  Future<void> _onSignOut(
    AuthSignOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthLoading());
    try {
      if (await _authService.signOutGoogle()) {
        emit(const AuthUnautorized());
      } else {
        emit(const AuthError('Logout error'));
      }
    } catch (e) {
      emit(AuthError('Logout error :$e'));
    }
  }
}
