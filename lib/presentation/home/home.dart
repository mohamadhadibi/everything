import 'package:everything/presentation/routs/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CatApp"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () => Get.toNamed(Routes.catList),
                child: const Text("Cat List")),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () =>
                    Get.toNamed(Routes.catDetail, parameters: {"id": '1'}),
                child: const Text("Cat Detail")),
          ],
        ),
      ),
    );
  }
}
