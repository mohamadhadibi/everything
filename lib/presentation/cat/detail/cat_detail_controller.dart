import 'package:everything/core/domain/cat/entity/cat.dart';
import 'package:everything/core/domain/cat/usecase/get_cat_usecase.dart';
import 'package:get/get.dart';

class CatDetailController extends GetxController {
  final GetCatUseCase _getCatUseCase;

  CatDetailController(this._getCatUseCase);

  Cat? cat;
  late int a;

  getCatDetail(String id) async {
    var result = await _getCatUseCase.call(id);
    result.fold(
      (l) => print("Ab Ghateeee"),
      (cat) {
        this.cat = cat;
        update();
      },
    );
  }
}
