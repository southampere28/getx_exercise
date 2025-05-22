// make a counter page using getX not using obx

import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Page with GetX',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: GetX<CounterController>(
          init: CounterController(),
          builder: (controller) {
            return Text(
              'Number ${controller.count}',
              style: const TextStyle(fontSize: 20),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<CounterController>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
