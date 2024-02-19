part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  final User? user;

  const AuthState(this.user);

  @override
  List<Object?> get props => [user];

  AuthState copyWith({User? user});
}

class AuthLoading extends AuthState {
  const AuthLoading() : super(null);

  @override
  AuthLoading copyWith({User? user}) {
    return const AuthLoading();
  }
}

class AuthError extends AuthState {
  final String error;

  const AuthError(this.error) : super(null);

  @override
  List<Object> get props => [error];

  @override
  AuthError copyWith({User? user}) {
    return AuthError(error);
  }
}

class AuthInitState extends AuthState {
  const AuthInitState(User super.user);

  @override
  AuthInitState copyWith({User? user}) {
    return AuthInitState(user ?? this.user!);
  }
}

class AuthAutorized extends AuthState {
  const AuthAutorized(User super.user);

  @override
  AuthAutorized copyWith({User? user}) {
    return AuthAutorized(user ?? this.user!);
  }
}

class AuthUnautorized extends AuthState {
  const AuthUnautorized() : super(null);

  @override
  AuthUnautorized copyWith({User? user}) {
    return const AuthUnautorized();
  }
}
