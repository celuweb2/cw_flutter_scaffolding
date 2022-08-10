import '../models/sample.dart';

abstract class SampleRepository {
  Future<Sample> getGretting();
}
