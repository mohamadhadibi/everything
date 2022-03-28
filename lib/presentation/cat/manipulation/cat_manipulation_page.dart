import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cat_manipulation_controller.dart';

class CatManipulationPage extends StatefulWidget {
  const CatManipulationPage({Key? key}) : super(key: key);

  @override
  State<CatManipulationPage> createState() => _CatManipulationPageState();
}

class _CatManipulationPageState extends State<CatManipulationPage> {
  final controller = Get.find<CatManipulationController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CatManipulationController>(
      builder: (controller) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(16),
                child: TextFormField(
                  initialValue: controller.cat.race,
                  decoration: const InputDecoration(label: Text("Race")),
                  onChanged: (race) =>
                      controller.cat = controller.cat.copy(race: race),
                ),
              ),
              const SizedBox(
                height: 54,
              ),
              ElevatedButton(
                onPressed: () => controller.submit(),
                child: const Text("Add"),
              ),
            ],
          ),
        );
      },
    );
  }
}
