import 'package:flutter/material.dart';
import 'package:flutter_demo/src/pages/client/products/list/client_products_list_page.dart';
import 'package:flutter_demo/src/pages/delivery/orders/list/delivery_orders_list_page.dart';
import 'package:flutter_demo/src/pages/login/login_page.dart';
import 'package:flutter_demo/src/pages/register/register_page.dart';
import 'package:flutter_demo/src/pages/roles/roles_page.dart';
import 'package:flutter_demo/src/pages/worker/orders/list/worker_order_list_page.dart';
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
          'roles': (BuildContext context) => const RolesPage(),
          'client/products/list': (BuildContext context) => const ClientProductsListPage(),
          'restaurant/orders/list': (BuildContext context) => const WorkerOrdersListPage(),
          'delivery/orders/list': (BuildContext context) => const DeliveryOrdersListPage(),
        },
    );
  }
}
