import 'package:dartz/dartz.dart';
import 'package:flutter_scaffolding/domain/commons/failure.dart';
import 'package:flutter_scaffolding/domain/sample/interfaces/sample_repository.dart';
import 'package:flutter_scaffolding/domain/sample/models/sample.dart';

class GetGrettingUseCases {
  final SampleRepository sampleRepository;

  GetGrettingUseCases(this.sampleRepository);

  Future<Either<Failure, Sample>> execute() async {
    try {
      Sample sample = await sampleRepository.getGretting();
      return Right(sample);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
