import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:darkarts/services/user_authentication_api_provider.dart';

class UserRepository {
  UserApiProvider _userApiProvider = UserApiProvider();
  String token;

  Future<String> userlogin({
    @required String username,
    @required String password,
  }) async {
    token = await _userApiProvider.userLogin(username,password);
    print("here is token $token");
    addStringToSP(token);
    return token;
  }

  // async {
  //   if (username == "amna" && password == "123") {
  //     await Future.delayed(Duration(seconds: 1), () => {});
  //     return 'token';
  //   } else {
  //     throw Error();
  //   }
  // }

  Future<void> deleteToken() async {
    /// delete from keystore/keychain
   await removeValuesSP();
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> hasToken()  async{
    /// read from keystore/keychain
    // await removeValuesSP();
    var token = await getStringValuesSP();
     if (token !=null  && token.isNotEmpty){
      return true;
    }
    else{
      return false;
    }
  }

  addStringToSP(token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token.toString());
    return;
  }

  getStringValuesSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    if (token !=null  && token.isNotEmpty){
      return token;
    }
  }

  removeValuesSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("token");
    return;
  }
}
