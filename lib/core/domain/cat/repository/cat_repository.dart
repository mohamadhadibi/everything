import 'package:dartz/dartz.dart';
import 'package:everything/core/domain/cat/entity/cat.dart';
import 'package:everything/core/domain/cat/repository/params.dart';
import 'package:everything/core/utils/failure.dart';

import '../../../../data/cat/model/cat_model.dart';

abstract class CatRepository {
  Future<Either<Failure, Cat>> getCatDetail(String params);

  Future<Either<Failure, List<Cat>>> getCats(GetCatsParams params);
}
