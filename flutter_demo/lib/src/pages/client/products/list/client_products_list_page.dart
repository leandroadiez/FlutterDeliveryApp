// mis publicaciones / busquedas abiertas
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_demo/src/pages/client/products/list/client_products_list_controller.dart';



class ClientProductsListPage extends StatefulWidget {
  const ClientProductsListPage({super.key});

  @override
  State<ClientProductsListPage> createState() => _ClientProductsListPageState();
}

class _ClientProductsListPageState extends State<ClientProductsListPage> {
  ClientProductsListController _con = new ClientProductsListController();
  @override
  void initState(){
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timestamp){
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: _con.logout,
            child: Text('Cerrar sesión'),
        )
      )
    );
  }
}
