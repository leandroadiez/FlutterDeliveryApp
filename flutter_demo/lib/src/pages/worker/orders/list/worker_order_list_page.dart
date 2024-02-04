import 'package:flutter/material.dart';

class WorkerOrdersListPage extends StatefulWidget {
  const WorkerOrdersListPage({super.key});

  @override
  State<WorkerOrdersListPage> createState() => _WorkerOrderListPageState();
}

class _WorkerOrderListPageState extends State<WorkerOrdersListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text('Worker orders list')
        )
    );
  }
}
