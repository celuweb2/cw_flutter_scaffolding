import 'package:flutter_scaffolding/domain/sample/interfaces/sample_repository.dart';
import 'package:flutter_scaffolding/domain/sample/models/sample.dart';

class MockSampleRepository implements SampleRepository {
  @override
  Future<Sample> getGretting() async {
    Sample sample = Sample(gretting: "Hola Mundo Celuweb");
    return sample;
  }
}
