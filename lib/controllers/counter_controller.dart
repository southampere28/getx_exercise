import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var isDark = false.obs;

  increment() => count++;

  decrement() => count--;

  changetheme() => isDark.value = !isDark.value;
}
