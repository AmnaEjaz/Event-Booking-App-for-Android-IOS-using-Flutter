import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:darkarts/bloc/login_bloc/login.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextStyle style =
      TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black);
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget _formFields(context, state) {
      final emailField = TextField(
        controller: _usernameController,
        obscureText: false,
        style: style,
        decoration: new InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.fromLTRB(10.0, 6.0, 20.0, 15.0),
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.black, fontSize: 15),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.lightGreen),
                borderRadius: BorderRadius.circular(7.0)),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white, //this has no effect
                ),
                borderRadius: BorderRadius.circular(7.0))),
      );
      final passwordField = TextField(
        controller: _passwordController,
        obscureText: true,
        style: style,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.fromLTRB(10.0, 6.0, 20.0, 15.0),
            hintText: "Password",
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.lightGreen),
                borderRadius: BorderRadius.circular(7.0)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(7.0))),
      );
      _onLoginButtonPressed() {
        BlocProvider.of<LoginBloc>(context).add(
          LoginButtonPressed(
            username: _usernameController.text,
            password: _passwordController.text,
          ),
        );
      }

      final loginButon = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(7.0),
        color: Color(0xff6f9a37),
        // color : Colors.lightGreen,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
          onPressed: state is! LoginLoading ? _onLoginButtonPressed : null,
          child: Text("Login",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      );
      return Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background_image.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 55.0,
                    child: Image.asset(
                      "images/na-logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 45.0),
                  emailField,
                  SizedBox(height: 15.0),
                  passwordField,
                  SizedBox(
                    height: 35.0,
                  ),
                  loginButon,
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return BlocListener<LoginBloc, LoginState>(listener: (context, state) {
      if (state is LoginFailure) {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('${state.error}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }, child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return _formFields(context, state);

      //    Form(
      //     child: Column(
      //       children: [
      //         TextFormField(
      //           decoration: InputDecoration(labelText: 'username'),
      //           controller: _usernameController,
      //         ),
      //         TextFormField(
      //           decoration: InputDecoration(labelText: 'password'),
      //           controller: _passwordController,
      //           obscureText: true,
      //         ),
      //         RaisedButton(
      //           onPressed:
      //               state is! LoginLoading ? _onLoginButtonPressed : null,
      //           child: Text('Login'),
      //         ),
      //         Container(
      //           child: state is LoginLoading
      //               ? CircularProgressIndicator()
      //               : null,
      //         ),
      //       ],
      //     ),
      //   ),
      // );
    }));
  }
}
