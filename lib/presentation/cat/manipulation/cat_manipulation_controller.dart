import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../core/domain/cat/entity/cat.dart';
import '../../../data/cat/model/cat_model.dart';

class CatManipulationController extends GetxController {
  Cat cat = Cat(id: '', race: '');

  addNewCat() async {
    if (cat.race.isNotEmpty) {
      var box = Hive.box<CatModel>("cats");
      box.add(CatModel(id: UniqueKey().toString(), race: cat.race));
    }
  }
}
