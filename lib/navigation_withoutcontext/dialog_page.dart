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
              onPressed: () {
                // default dialog with getX
                Get.defaultDialog(
                    title: 'konfirmasi',
                    barrierDismissible: false,
                    middleText: "Dialog made in 3 lines of code",

                    // ============== using default confirmation ==========
                    // onConfirm: () {
                    //   print('ok');
                    //   Get.back();
                    //   Get.snackbar('Success', 'Pesan telah diterima!');
                    // },
                    // onCancel: () {
                    //   // cancel logic
                    // },

                    // ============== using custom confirmation. ex: ElevatedButton ==========
                    confirm: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          Get.snackbar('success', 'diterima');
                        },
                        child: Text('accept')),
                    cancel: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          Get.snackbar('canceled', 'dibatalkan');
                        },
                        child: Text('cancel')),

                    // ============== using multiple confirmation with actions ==========
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Get.back();
                            Get.snackbar('canceled', 'dibatalkan');
                          },
                          child: Text('pil1')),
                      ElevatedButton(
                          onPressed: () {
                            Get.back();
                            Get.snackbar('canceled', 'dibatalkan');
                          },
                          child: Text('pil2')),
                      ElevatedButton(
                          onPressed: () {
                            Get.back();
                            Get.snackbar('canceled', 'dibatalkan');
                          },
                          child: Text('pil3')),
                    ]);
              },
              child: const Text('default dialog 2'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(Padding(
            padding: EdgeInsets.only(
                // bottom: MediaQuery.of(context).viewInsets.bottom
                // bottom: MediaQuery.of(context).viewInsets.bottom
                ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20))),
              child: Center(
                child: ListView(
                  children: const [
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
