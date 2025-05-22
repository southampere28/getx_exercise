import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:belajar_getx/counter_game.dart';
import 'package:belajar_getx/counter_page.dart';
import 'package:belajar_getx/people_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterController counterC = Get.put(CounterController());
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
        home: const CounterGame());
  }
}

// class MyApp extends StatelessWidget {
//   final CounterController counterC = Get.put(CounterController());
//   MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => MaterialApp(
//         theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
//         home: HomePage()));
//   }
// }

class HomePage extends StatelessWidget {
  final controller = Get.find<CounterController>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              "Number: ${controller.count}",
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => controller.decrement(),
                child: Text(
                  'decrease',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () => controller.increment(),
                child: Text(
                  'increase',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.changetheme(),
        child: Text('theme'),
      ),
    );
  }
}
