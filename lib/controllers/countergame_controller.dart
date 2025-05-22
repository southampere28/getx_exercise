import 'package:get/get.dart';
import 'dart:async';

class CounterGameController extends GetxController {
  var count = 0.obs;
  var count2 = 0.obs;
  var countdown = 0.obs;
  var isCountdownTrue = false.obs;

  increment() {
    if (isCountdownTrue.value == true) {
      count++;
    }
  }

  increment2() {
    if (isCountdownTrue.value == true) {
      count2++;
    }
  }

  reset() {
    count.value = 0;
    count2.value = 0;
  }

  void startCountdown() {
    reset();
    isCountdownTrue.value = true;
    countdown.value = 10;
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (countdown.value == 0) {
        timer.cancel();
        print('Countdown selesai!');
        isCountdownTrue.value = false;
      } else {
        print('Sisa: $countdown detik');
        countdown--;
      }
    });
  }
}
