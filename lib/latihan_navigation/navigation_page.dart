import 'package:belajar_getx/latihan_navigation/nav2_page.dart';
import 'package:belajar_getx/routes/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Page One',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  // Get.to(const NavtwoPage());
                  var data = await Get.toNamed(AppRoutes.page_2);
                  print('returned from page 2 : $data');
                  Get.snackbar('info', 'Data dari page 2 : $data');
                },
                child: Text('Next Page >>'))
          ],
        ),
      ),
    );
  }
}
