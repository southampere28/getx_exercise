import 'package:belajar_getx/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DynamicPage extends StatelessWidget {
  const DynamicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Halaman Dynamic Route',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // todo
              Get.toNamed(AppRoutes.product);
            },
            child: Text('ALL PRODUCT >>')),
      ),
    );
  }
}
