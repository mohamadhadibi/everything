import 'package:dartz/dartz.dart';
import 'package:everything/core/domain/cat/entity/cat.dart';
import 'package:everything/core/domain/cat/repository/cat_repository.dart';
import 'package:everything/core/utils/failure.dart';

class CatRepositoryImpl implements CatRepository {
  @override
  Future<Either<Failure, Cat>> getCatDetail() async {
    return Right(Cat(id: '1', race: 'Sag'));
  }
}
