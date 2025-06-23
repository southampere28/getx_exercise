import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'User : ${Get.parameters['user']}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Flag : ${Get.parameters['flag']}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Country : ${Get.parameters['country']}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Language : ${Get.parameters['language']}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
