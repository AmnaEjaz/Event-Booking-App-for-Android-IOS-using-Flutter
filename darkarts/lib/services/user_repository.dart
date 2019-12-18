import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

class UserRepository {
  Future<String> authenticate({
    @required String username,
    @required String password,
  }) async {
    if(username == "amna" && password == "123"){
       await Future.delayed(Duration(seconds: 1), ()=>{});
    return 'token';
    }
    else{
      throw Error();
    }
   
  }

  Future<void> deleteToken() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> hasToken() async {
    /// read from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return false;
  }
}
