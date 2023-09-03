import 'package:flutter/material.dart';
import 'package:flutter_demo/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Image.asset('assets/img/delivery.png',
            width: 200,
            height: 200),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Username',
              ),
            ),
            const TextField(
                decoration: InputDecoration(
                    hintText: 'Contraseña',
                ),
            ),
            ElevatedButton(
                onPressed: (){},
                child: Text('Ingresar')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No tienes cuenta?',
                style: TextStyle(
                  color: MyColors.primaryColor
                )),
                SizedBox(
                  width: 5,
                ),
                Text(
                    'Registrate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: MyColors.primaryColor
                    )
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
