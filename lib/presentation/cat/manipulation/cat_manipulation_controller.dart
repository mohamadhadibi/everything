import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../core/domain/cat/entity/cat.dart';
import '../../../data/cat/model/cat_model.dart';

class CatManipulationController extends GetxController {
  late Cat cat;
  Box box = Hive.box<CatModel>("cats");

  @override
  void onInit() {
    cat = Get.arguments['cat'] ?? Cat(id: '', race: '');
    super.onInit();
  }

  updateCat() async {
    if (cat.race.isNotEmpty) {
      int index =
          box.values.toList().lastIndexWhere((item) => item.id == cat.id);
      box.putAt(index, CatModel(id: cat.id, race: cat.race));
    }
  }

  addNewCat() {
    if (cat.race.isNotEmpty) {
      box.add(CatModel(id: UniqueKey().toString(), race: cat.race));
    }
  }

  submit() => cat.id.isNotEmpty ? updateCat() : addNewCat();
}
