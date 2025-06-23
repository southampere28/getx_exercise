import 'package:belajar_getx/latihan_navigation/nav4_page.dart';
import 'package:belajar_getx/routes/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavthreePage extends StatelessWidget {
  const NavthreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Page Three',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('<< Back Page')),
            ElevatedButton(
                onPressed: () {
                  // no option to go back to the previous screen
                  // Get.off(const NavfourPage());

                  // cancel all the previous route
                  // Get.offAll(const NavfourPage());

                  Get.toNamed(AppRoutes.page_4);
                },
                child: Text('Next Page >>'))
          ],
        ),
      ),
    );
  }
}
