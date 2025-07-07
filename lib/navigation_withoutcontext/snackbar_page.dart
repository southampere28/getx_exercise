import 'package:belajar_getx/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // simple snackbar with getX
                Get.snackbar('SimpleApp', 'i am a modern snackbar');
              },
              child: const Text('simple snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                // snackbar custom with getX
                Get.snackbar(
                  "Hey i'm a Get SnackBar!", // title
                  "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
                  icon: Icon(Icons.check),
                  shouldIconPulse: true,
                  onTap: (clicked) {
                    // when clicked it will change to aother screen example.
                    Get.toNamed(AppRoutes.page_1);
                  },
                  barBlur: 20,
                  isDismissible: true,
                  duration: Duration(seconds: 3),
                );
              },
              child: const Text('custom snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                // snackbar custom with getX
                Get.snackbar(
                  "Hey i'm a Get SnackBar!", // title
                  "snackbar full custom using some parameters wich is backgroundgradient, border, duration, etc...", // message
                  animationDuration: Duration(milliseconds: 200),
                  backgroundColor: Colors.amber,
                  backgroundGradient: const LinearGradient(colors: [
                    Colors.purple,
                    Colors.green,
                  ]),
                  borderWidth: 3,
                  borderColor: Colors.red,
                  onTap: (_) {
                    print('Snackbar Clicked!');
                  },
                  icon: const Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
                  shouldIconPulse: true, // blinking icon
                );
              },
              child: const Text('custom snackbar 2'),
            ),
          ],
        ),
      ),
    );
  }
}
