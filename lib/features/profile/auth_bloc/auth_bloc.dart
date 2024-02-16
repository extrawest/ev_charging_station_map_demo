import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../common/services/logger.dart';
import '../repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(Unautorized()) {
    on<SignInEvent>(_onSignIn);
    on<SignOutEvent>(_onSignOut);
  }

  Future<void> _onSignIn(
    SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final user = await _authRepository.signIn();
      log.fine('user>>>>');
      if (user != null) {
        emit(Authorized(user));
      } else {
        emit(const Error('Authorization error'));
      }
    } catch (e) {
      emit(Error('Authorization error: $e'));
    }
  }

  Future<void> _onSignOut(
    SignOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(Loading());
    try {
      final isSignedOut = await _authRepository.signOut();
      if (isSignedOut) {
        emit(Unautorized());
      } else {
        emit(const Error('Unauthorized'));
      }
    } catch (e) {
      emit(Error('Unauthorized error: $e'));
    }
  }
}
