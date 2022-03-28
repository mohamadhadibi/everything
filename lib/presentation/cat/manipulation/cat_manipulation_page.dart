import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'cat_manipulation_controller.dart';

class CatManipulationPage extends StatefulWidget {
  const CatManipulationPage({Key? key}) : super(key: key);

  @override
  State<CatManipulationPage> createState() => _CatManipulationPageState();
}

class _CatManipulationPageState extends State<CatManipulationPage> {
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
                  decoration: const InputDecoration(label: Text("Race")),
                  onChanged: (race) =>
                      controller.cat = controller.cat.copy(race: race),
                ),
              ),
              const SizedBox(
                height: 54,
              ),
              ElevatedButton(
                onPressed: () => controller.addNewCat(),
                child: const Text("Add"),
              ),
            ],
          ),
        );
      },
    );
  }
}
