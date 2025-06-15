import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleBuilderPage extends StatelessWidget {
  const SimpleBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Page: Simple Builder',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: GetBuilder<CounterController>(
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
