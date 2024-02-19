part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class AuthSignInEvent extends AuthEvent {
  @override
  List<Object> get props => [];
}
class AuthInitEvent extends AuthEvent {
  @override
  List<Object> get props => [];
}

class AuthSignOutEvent extends AuthEvent {
  @override
  List<Object> get props => [];
}
