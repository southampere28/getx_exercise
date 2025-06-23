import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotfoundPage extends StatelessWidget {
  const NotfoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        children: [
          Expanded(
            child: Center(
              child: Text('404 Page Error',
                  style: TextStyle(fontSize: 24, color: Colors.grey)),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Get.back(); // atau Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: const Text(
              "<< Go Back",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
