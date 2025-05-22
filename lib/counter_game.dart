import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:belajar_getx/controllers/countergame_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterGame extends StatelessWidget {
  const CounterGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PvP Counter',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: GetX<CounterGameController>(
          init: CounterGameController(),
          builder: (controller) {
            return Column(
              children: [
                Expanded(
                    flex: 10,
                    child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(30),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.cyan,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            onPressed: () => controller.increment(),
                            child: Text(
                              '${controller.count}',
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )))),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              controller.startCountdown();
                            },
                            child: Text('reset'),
                          ),
                          Text('${controller.countdown}')
                        ],
                      ),
                    )),
                Expanded(
                    flex: 10,
                    child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(30),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.cyan,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            onPressed: () => controller.increment2(),
                            child: Text(
                              '${controller.count2}',
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )))),
              ],
            );
          },
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Get.find<CounterController>().increment(),
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
