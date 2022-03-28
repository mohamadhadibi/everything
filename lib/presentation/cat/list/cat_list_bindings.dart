import 'package:everything/core/domain/cat/repository/cat_repository.dart';
import 'package:everything/core/domain/cat/usecase/get_cats_usecase.dart';
import 'package:everything/data/cat/cat_repository_impl.dart';
import 'package:everything/presentation/cat/list/cat_list_controller.dart';
import 'package:get/get.dart';

class CatListBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<CatRepository>(CatRepositoryImpl());
    Get.put(GetCatsUseCase(Get.find()));
    Get.put(CatListController(Get.find()));
  }
}
