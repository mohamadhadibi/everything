import 'package:everything/core/domain/cat/repository/cat_repository.dart';
import 'package:everything/core/domain/cat/usecase/get_cat_usecase.dart';
import 'package:everything/data/cat/cat_repository_impl.dart';
import 'package:get/get.dart';

import 'cat_detail_controller.dart';

class CatDetailBindings extends Bindings {
  @override
  dependencies() {
    Get.put<CatRepository>(CatRepositoryImpl());
    Get.put(GetCatUseCase(Get.find()));
    Get.put(() => CatDetailController(Get.find<GetCatUseCase>()));
  }
}
