import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_demo/src/models/response_api.dart';
import 'package:flutter_demo/src/provider/users_provider.dart';
import 'package:flutter_demo/src/utils/my_snackbar.dart';

class LoginController {
  BuildContext? context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  UsersProvider usersProvider = new UsersProvider();

  Future? init(BuildContext context) async {
    this.context = context;
    await usersProvider.init(context);
  }

  void goToRegisterPage(){
    Navigator.pushNamed(context!, 'register');
  }

   void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    ResponseApi? responseApi = await usersProvider.login(email, password);

    MySnackbar.show(context, responseApi?.message);
    print ('EMAIL: $email');
    print ('PASSWORD: $password');
  }
}

