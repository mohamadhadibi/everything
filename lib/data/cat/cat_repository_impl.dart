import 'package:dartz/dartz.dart';
import 'package:everything/core/domain/cat/entity/cat.dart';
import 'package:everything/core/domain/cat/repository/cat_repository.dart';
import 'package:everything/core/domain/cat/repository/params.dart';
import 'package:everything/core/utils/failure.dart';

class CatRepositoryImpl implements CatRepository {
  @override
  Future<Either<Failure, Cat>> getCatDetail() async {
    return Right(Cat(id: '1', race: 'Sag'));
  }

  @override
  Future<Either<Failure, List<Cat>>> getCats(GetCatsParams params) async{
    return Right([
      Cat(id: '1', race: 'Sag'),
      Cat(id: '2', race: 'Persian'),
      Cat(id: '3', race: 'Scottish'),
    ]);
  }
}
