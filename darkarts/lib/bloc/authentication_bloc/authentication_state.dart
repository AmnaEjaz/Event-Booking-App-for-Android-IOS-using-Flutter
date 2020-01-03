import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:darkarts/models/user_model.dart';

abstract class AuthenticationState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthenticationUninitialized extends AuthenticationState {}

class AuthenticationAuthenticated extends AuthenticationState {
 final User user;
  AuthenticationAuthenticated({@required this.user});
}

class AuthenticationUnauthenticated extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}
