import 'package:belajar_getx/latihan_navigation/nav3_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavtwoPage extends StatelessWidget {
  const NavtwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Page Two',
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
                  Get.back(result: 'success');
                },
                child: Text('<< Back Page')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/page-3');
                },
                child: Text('Next Page >>'))
          ],
        ),
      ),
    );
  }
}
