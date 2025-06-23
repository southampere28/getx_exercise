import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // todo
                  Get.toNamed('${AppRoutes.product}1?name=T-shirt&size=XL');
                },
                child: const Text('PRODUCT 1 >>')),
            ElevatedButton(
                onPressed: () {
                  // todo
                  Get.toNamed('${AppRoutes.product}1?name=Kemeja&size=L');
                },
                child: const Text('PRODUCT 2 >>')),
            ElevatedButton(
                onPressed: () {
                  // todo
                  Get.toNamed('${AppRoutes.product}1?name=Piyama&size=M');
                },
                child: const Text('PRODUCT 3 >>')),
          ],
        ),
      ),
    );
  }
}
