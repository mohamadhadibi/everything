import 'package:dartz/dartz.dart';
import 'package:everything/core/domain/cat/entity/cat.dart';
import 'package:everything/core/domain/cat/repository/cat_repository.dart';
import 'package:everything/core/domain/cat/repository/params.dart';
import 'package:everything/core/utils/failure.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'model/cat_model.dart';

class CatRepositoryImpl implements CatRepository {
  @override
  Future<Either<Failure, Cat>> getCatDetail(String params) async {
    Box box = Hive.box<CatModel>("cats");
    return Right(box.values
        .map((e) => Cat(id: e.id, race: e.race))
        .toList()
        .firstWhere((item) => item.id == params));
  }

  @override
  Future<Either<Failure, List<Cat>>> getCats(GetCatsParams params) async {
    if (params.isFromLocal) {
      Box box = Hive.box<CatModel>("cats");
      if (box.isNotEmpty) {
        return Right(
            box.values.map((e) => Cat(id: e.id, race: e.race)).toList());
      } else {
        return Right([Cat(id: "12", race: "DSH")]);
      }
    } else {
      return Right([
        Cat(id: '1', race: 'Sag'),
        Cat(id: '2', race: 'Persian'),
        Cat(id: '3', race: 'Scottish'),
      ]);
    }
  }
}
