import 'package:belajar_getx/routes/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavfourPage extends StatelessWidget {
  const NavfourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Page Four',
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
                  // get toNamed using parameter
                  // Get.toNamed('${AppRoutes.page_profile}/41222181');

                  // get toNamed using multiple parameter
                  // Get.toNamed(
                  //     '${AppRoutes.page_profile}/41222181?flag=true&country=indonesia&language=jawa');

                  // get toNamed using multiple parameter but in different way
                  var parameters = <String, String>{
                    "flag": "True",
                    "country": "Indonesia",
                    "language": "Bahasa Indonesia"
                  };
                  Get.toNamed("${AppRoutes.pageProfile}/41222181",
                      parameters: parameters);
                },
                child: Text('Next Page >>'))
          ],
        ),
      ),
    );
  }
}
