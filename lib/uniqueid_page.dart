import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UniquePage extends StatelessWidget {
  const UniquePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              id: "pramudya",
              builder: (_) {
                return Text(
                  'Pramudya: ${controller.count}',
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            GetBuilder<CounterController>(
              id: "haqi",
              builder: (_) {
                return Text(
                  'Haqi: ${controller.count}',
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            GetBuilder<CounterController>(
              builder: (_) {
                return Text(
                  'Umum: ${controller.count}',
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<CounterController>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
