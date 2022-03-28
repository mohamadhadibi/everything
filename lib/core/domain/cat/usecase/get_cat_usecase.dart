import 'package:dartz/dartz.dart';
import 'package:everything/core/domain/cat/entity/cat.dart';
import 'package:everything/core/domain/cat/repository/cat_repository.dart';
import 'package:everything/core/utils/failure.dart';
import 'package:everything/core/utils/usecase.dart';

class GetCatUseCase extends UseCase<Cat, String> {
  final CatRepository _catRepository;

  GetCatUseCase(this._catRepository);
  @override
  Future<Either<Failure, Cat>> call(params) async {
    return await _catRepository.getCatDetail(params);
  }
}
