import 'package:everything/core/domain/cat/entity/cat.dart';
import 'package:everything/core/domain/cat/repository/params.dart';
import 'package:everything/core/domain/cat/usecase/get_cats_usecase.dart';
import 'package:get/get.dart';

class CatListController extends GetxController {

  final GetCatsUseCase _getCatsUseCase;

  CatListController(this._getCatsUseCase);


  /*@override
  void onInit() {
    getCatsList();
  }*/

  List<Cat> cats = [];
  getCatsList() async {
    var result = await _getCatsUseCase.call(GetCatsParams());
    Future.delayed(const Duration(seconds: 3));
    result.fold((l) => {}, (data) {
      cats.addAll(data);
      update();
    });
  }
}
