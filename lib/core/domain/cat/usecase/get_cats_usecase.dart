import 'package:dartz/dartz.dart';
import 'package:everything/core/domain/cat/entity/cat.dart';
import 'package:everything/core/domain/cat/repository/cat_repository.dart';
import 'package:everything/core/domain/cat/repository/params.dart';
import 'package:everything/core/utils/failure.dart';
import 'package:everything/core/utils/usecase.dart';

class GetCatsUseCase extends UseCase<List<Cat>, GetCatsParams> {
  final CatRepository _catRepository;

  GetCatsUseCase(this._catRepository);
  @override
  Future<Either<Failure, List<Cat>>> call(params) async {
    return await _catRepository.getCats(params);
  }
}
