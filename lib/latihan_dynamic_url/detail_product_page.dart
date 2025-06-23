import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Produk ${Get.parameters['id']}',
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'nama produk : ${Get.parameters["name"]}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'ukuran produk : ${Get.parameters["size"]}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
