import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttonWithResult({
      required final String text,
      required final bool result,
    }) =>
        TextButton(
          onPressed: () {
            Get.printInfo(info: result.toString());
            Get.back(result: result);
          },
          child: Text(text),
        );

    return Scaffold(
      appBar: AppBar(
        title: Text('Get Dialog'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // default dialog with getX
                Get.defaultDialog(
                    onConfirm: () => print("Ok"),
                    middleText: "Dialog made in 3 lines of code");
              },
              child: const Text('default dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                // alert dialog
                bool? delete = await Get.dialog(AlertDialog(
                  content: const Text('Are you sure you would like to delete?'),
                  actions: [
                    buttonWithResult(text: 'No', result: false),
                    buttonWithResult(text: 'Yes', result: true),
                  ],
                ));

                if (delete != null && delete == true) {
                  Get.snackbar('Success', "data has been deleted");
                } else {
                  Get.snackbar('Failed', "deleting data failed");
                }
              },
              child: const Text('confirmation alert dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                final String? selectedOption = await Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    color: Get.isDarkMode ? Colors.grey[800] : Colors.white,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.music_note),
                        title: const Text('Music'),
                        onTap: () {
                          Get.back(result: 'Music');
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.videocam),
                        title: const Text('Video'),
                        onTap: () {
                          Get.back(result: 'Video');
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.close),
                        title: const Text('Cancel'),
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ));

                if (selectedOption != null) {
                  Get.snackbar(
                    'Pilihan Anda',
                    'Anda memilih: $selectedOption',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                } else {
                  Get.snackbar(
                    'Tidak Ada Pilihan',
                    'Bottom sheet ditutup tanpa pilihan.',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }
              },
              child: const Text('get bottom sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
