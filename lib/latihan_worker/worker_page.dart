import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkerPage extends StatelessWidget {
  WorkerPage({super.key});

  final myC = Get.put(MyworkerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('worker textfield'),
        actions: [
          IconButton(
              onPressed: () {
                myC.reset();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'Something happen : ${myC.count}x',
                    style: TextStyle(fontSize: 25),
                  )),
              const SizedBox(
                height: 30,
              ),
              TextField(
                onChanged: (value) => myC.increment(),
                decoration: InputDecoration(border: OutlineInputBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyworkerController extends GetxController {
  var count = 0.obs;
  var data = 0.obs;

  increment() {
    count++;
  }

  reset() {
    count.value = 0;
  }

  @override
  void onInit() {
    ever(
      count, (_) => print('doing something...'));

    everAll([count, data], (_) => print('doing something...'));

    once(count, (_) => print('doing something...'));

    // Called every time user stops typing for X times
    // biasa digunakan untuk searching
    debounce(count, (_) => print('doing something...'),
        time: const Duration(seconds: 2));

    // Ignore all changes within X second.
    interval(count, (_) => print('doing something...'),
        time: const Duration(seconds: 2));

    super.onInit();
  }
}
