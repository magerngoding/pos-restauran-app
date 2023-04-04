import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/pos_order_controller.dart';

class PosOrderView extends StatefulWidget {
  const PosOrderView({Key? key}) : super(key: key);

  Widget build(context, PosOrderController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosOrder"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<PosOrderView> createState() => PosOrderController();
}