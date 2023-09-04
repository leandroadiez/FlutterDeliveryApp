import 'package:flutter/material.dart';
import 'package:flutter_demo/src/login/login_page.dart';
import 'package:flutter_demo/src/register/register_page.dart';
import 'package:flutter_demo/src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          //fontFamily: 'Roboto',
          colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: MyColors.primaryColor,
        )),
        debugShowCheckedModeBanner: false,
        title: 'Delivery App Flutter',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => const LoginPage(),
          'register': (BuildContext context) => const RegisterPage(),

        },
    );
  }
}
