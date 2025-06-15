import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var isDark = false.obs;

  // increment() {
  //   count++;
  // }

  // use update and delete observer variable while you are using simple builder
  // increment() {
  //   count++;
  //   update();
  // }

  // use update with array included ids for define unique id (simplebuilder only)
  increment() {
    count++;
    update(['pramudya', 'haqi']);
  }

  decrement() => count--;

  changetheme() => isDark.value = !isDark.value;
}
