import 'package:flutter/material.dart';
import 'package:flutter_demo/src/models/response_api.dart';
import 'package:flutter_demo/src/models/user.dart';
import 'package:flutter_demo/src/provider/users_provider.dart';
import 'package:flutter_demo/src/utils/my_snackbar.dart';

class RegisterController {
  BuildContext? context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  UsersProvider usersProvider = new UsersProvider();

  Future? init(BuildContext context){
    this.context = context;
    usersProvider.init(context);
    return null;
  }

  void register() async {
    String email = emailController.text.trim();
    String name = nameController.text;
    String lastname = lastnameController.text;
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if(email.isEmpty || name.isEmpty || lastname.isEmpty || phone.isEmpty || password.isEmpty || confirmPassword.isEmpty){
      MySnackbar.show(context, 'Debes ingresar todos los campos');
      return;
    }
    if(confirmPassword != password){
      MySnackbar.show(context, 'Las contraseñas no coinciden');
      return;
    }
    if(password.length < 6){
      MySnackbar.show(context, 'La contraseña debe tener al menos 6 caracteres');
      return;
    }

    User user = new User(
      email: email,
      name: name,
      lastname: lastname,
      phone: phone,
      password: password, roles: []
    );

    ResponseApi? responseApi = await usersProvider.create(user);

    MySnackbar.show(context, responseApi?.message);

    if(responseApi != null && responseApi.success!){
      Future.delayed(Duration(seconds: 3), (){
        Navigator.pushReplacementNamed(context!, 'login');
      });
    }

    print('RESPUESTA: ${responseApi?.toJson()}');
  }

  void back(){
    Navigator.pop(context!);
  }

}