import 'package:get/get.dart';

import 'cat_manipulation_controller.dart';

class CatManipulationBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CatManipulationController());
  }
}
