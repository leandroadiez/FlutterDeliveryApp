import 'package:flutter/material.dart';

class LoginController {
  BuildContext? context;

  Future? init(BuildContext context){
    this.context = context;
  }

  void goToRegisterPage(){
    Navigator.pushNamed(context!, 'register');
  }
}

