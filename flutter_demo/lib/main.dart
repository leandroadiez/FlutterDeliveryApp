import 'package:flutter/material.dart';
import 'package:flutter_demo/src/login/login_page.dart';
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
        debugShowCheckedModeBanner: false,
        title: 'Delivery App Flutter',
        initialRoute: 'login',
        routes: {'login': (BuildContext context) => const LoginPage()},
        theme: ThemeData(
          primaryColor: MyColors.primaryColor,
        )
    );
  }
}
