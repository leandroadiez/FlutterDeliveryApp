import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_demo/src/models/response_api.dart';
import 'package:flutter_demo/src/models/user.dart';
import 'package:flutter_demo/src/provider/users_provider.dart';
import 'package:flutter_demo/src/utils/my_snackbar.dart';
import 'package:flutter_demo/src/utils/shared_pref.dart';

class LoginController {
  BuildContext? context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  UsersProvider usersProvider = new UsersProvider();
  SharedPref _sharedPref = new SharedPref();

  Future? init(BuildContext context) async {
    this.context = context;
    await usersProvider.init(context);
    
    User user = User.fromJson(await _sharedPref.read('user') ?? {});

    if(user?.sessionToken != null){
      Navigator.pushNamedAndRemoveUntil(context, 'client/products/list', (route) => false);
    }
  }

  void goToRegisterPage(){
    Navigator.pushNamed(context!, 'register');
  }

   void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    ResponseApi? responseApi = await usersProvider.login(email, password);

    print ('EMAIL: $email');
    print ('PASSWORD: $password');

    if(responseApi != null && responseApi.success!){
      User user = User.fromJson(responseApi.data);
      _sharedPref.save('user', user.toJson());
      Navigator.pushNamedAndRemoveUntil(context!, 'client/products/list', (route) => false);
    }
    else{
      MySnackbar.show(context, responseApi?.message);
    }


  }
}

