import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:darkarts/services/repository.dart';
import 'package:darkarts/services/user_repository.dart';
import 'package:darkarts/bloc/authentication_bloc/authentication.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//pages import
import './pages/home.dart';
import 'package:darkarts/common/splash/splash.dart';
import 'package:darkarts/bloc/login_bloc/login.dart';
import 'package:darkarts/common/common.dart';


class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final userRepository = UserRepository();
  final eventRepository = EventRepository();
  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(userRepository: userRepository)
          ..add(AppStarted());
      },
      child: App(userRepository: userRepository, eventRepository: eventRepository),
    ),
  );
}

class App extends StatelessWidget {
  final UserRepository userRepository;
   final EventRepository eventRepository;

  App({Key key, @required this.userRepository, this.eventRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationAuthenticated) {
            return HomePage(eventRepository:eventRepository);
          }
          if (state is AuthenticationUnauthenticated) {
            return LoginPage(userRepository: userRepository);
          }
          if (state is AuthenticationLoading) {
            return LoadingIndicator();
          }
          return SplashPage();
        },
      ),
    );
  }
}
