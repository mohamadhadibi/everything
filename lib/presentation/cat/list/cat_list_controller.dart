import 'package:everything/core/domain/cat/entity/cat.dart';
import 'package:everything/core/domain/cat/repository/params.dart';
import 'package:everything/core/domain/cat/usecase/get_cats_usecase.dart';
import 'package:get/get.dart';

class CatListController extends GetxController {
  final GetCatsUseCase _getCatsUseCase;

  CatListController(this._getCatsUseCase);

  @override
  void onInit() {
    getCatsList();
    super.onInit();
  }

  List<Cat> cats = [];

  getCatsList() async {
    var result = await _getCatsUseCase.call(GetCatsParams(isFromLocal: true));
    result.fold((l) {
      cats.add(Cat(id: "123", race: "Error"));
      update(["1"]);
    }, (data) {
      cats.addAll(data);
      update(["1"]);
    });
  }
}
