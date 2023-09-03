import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Delivery App'),

      ),
      body: Stack(children: [
        Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(135)),
                color: Colors.lime
            ),
        ),
        Container(
          margin: EdgeInsets.only(top: 60, left: 50),
          child: Text('LOGIN TEST'),
        ),
      ],)
    );
  }
}
