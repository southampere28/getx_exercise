import 'package:belajar_getx/controllers/people_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PeopleController());

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text(
              'name : ${controller.people.value.name}',
              style: TextStyle(fontSize: 20),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.changeToUppercase();
        },
        child: const Icon(Icons.text_increase_outlined),
      ),
    );
  }
}
