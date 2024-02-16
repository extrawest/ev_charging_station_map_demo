part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

// class AuthInitial extends AuthState {}

class Loading extends AuthState {}

class Error extends AuthState {
  final String error;
  const Error(this.error);

  @override
  List<Object> get props => [error];
}

class Authorized extends AuthState {
  final User user;
  const Authorized(this.user);

  @override
  List<Object> get props => [user];
}

class Unautorized extends AuthState {}
