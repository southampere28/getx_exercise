import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LifecyclePage extends StatelessWidget {
  LifecyclePage({super.key});

  final countC = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'GetX Lifecycle',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => TextPage()));
                Get.to(() => TextPage());
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: GetBuilder<CounterController>(
            initState: (_) => print("initState"),
            didChangeDependencies: (state) => print('didchangedependency'),
            didUpdateWidget: (oldwidget, state) => print('widget diupdate'),
            dispose: (state) => print("dispose"),
            builder: (_) => Text('Number: ${countC.count}')),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        countC.increment();
      }),
    );
  }
}

class TextPage extends StatelessWidget {
  TextPage({super.key});

  final textC = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'text page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: textC.myC,
            ),
          ),
          const Text(
            'Other Page',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class TextController extends GetxController {
  final myC = TextEditingController();
}
