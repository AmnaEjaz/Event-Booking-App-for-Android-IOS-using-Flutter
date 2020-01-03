import 'dart:async';
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:darkarts/services/user_repository.dart';

import 'package:darkarts/bloc/authentication_bloc/authentication.dart';
import 'package:darkarts/models/user_model.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;

  AuthenticationBloc({@required this.userRepository})
      : assert(userRepository != null);

  @override
  AuthenticationState get initialState => AuthenticationUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      final bool hasToken = await userRepository.hasToken();


      if (hasToken) {
      final String token = await userRepository.getStringValuesSP();
      final Map<String, dynamic> tokenjson = json.decode(token);
      final   user =  User.fromJson(tokenjson['User']) ;
     
        yield AuthenticationAuthenticated(user:user);
      } else {
        yield AuthenticationUnauthenticated();
      }
    }

    if (event is LoggedIn) {
      yield AuthenticationLoading();
      await userRepository.persistToken(event.token);
      yield AuthenticationAuthenticated();
    }

    if (event is LoggedOut) {
      yield AuthenticationLoading();
      await userRepository.deleteToken();
      yield AuthenticationUnauthenticated();
    }
  }
  //   Map<String, dynamic> jsonData = await loadData();
    
  //   Future<Map<String, dynamic>> loadData() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final String jsonString = prefs.getString('token');
  //   if (jsonString != null && jsonString.isNotEmpty) {
  //     return json.decode(jsonString);
  //   }
  //   return Map(); // default value
  // }
}
