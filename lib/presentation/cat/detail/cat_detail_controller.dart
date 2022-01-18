import 'package:everything/core/domain/cat/usecase/get_cat_usecase.dart';
import 'package:get/get.dart';

class CatDetailController extends GetxController {
  final GetCatUseCase _getCatUseCase;

  CatDetailController(this._getCatUseCase);

  getCatDetail(String id) {
    print("Cat id is:$id");
  }
}
