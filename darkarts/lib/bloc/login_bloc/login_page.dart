import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:darkarts/services/user_repository.dart';

import 'package:darkarts/bloc/authentication_bloc/authentication.dart';
import 'package:darkarts/bloc/login_bloc/login.dart';

class LoginPage extends StatelessWidget {
  final UserRepository userRepository;

  LoginPage({Key key, @required this.userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) {
          return LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            userRepository: userRepository,
          );
        },
        child: LoginForm(),
      ),
    );
  }
  //   @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Stack(
  //       fit: StackFit.expand,
  //       children: <Widget>[
  //         Image.asset("images/background_image.jpg", fit: BoxFit.cover),
  //         BackdropFilter(
  //           filter: ui.ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
  //           child: Container(
  //             color: Colors.white.withOpacity(0.2),
  //             child:BlocProvider(
  //                 create: (context) {
  //                   return LoginBloc(
  //                     authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
  //                     userRepository: userRepository,
  //                   );
  //                 },
  //                 child: LoginForm(),
  //               ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
