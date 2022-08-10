import 'package:flutter_scaffolding/application/sample/get_gretting_use_cases.dart';
import 'package:flutter_scaffolding/domain/sample/interfaces/sample_repository.dart';
import 'package:flutter_scaffolding/infraestructure/repositories/sample/mock_sample_repository.dart';
import 'package:get/get.dart';

class SampleViewModel extends GetxController {
  SampleRepository? sampleRepository;
  GetGrettingUseCases? getGrettingUseCases;

  RxString gretting = "".obs;

  @override
  void onInit() async {
    super.onInit();
    sampleRepository = MockSampleRepository();
    getGrettingUseCases = GetGrettingUseCases(sampleRepository!);

    final result = await getGrettingUseCases!.execute();

    result.fold(
        (failure) =>
            {Get.snackbar("Error", failure.message), print(failure.message)},
        (sample) => {gretting.value = sample.gretting});
  }
}
