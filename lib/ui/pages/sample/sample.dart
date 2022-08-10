import 'package:flutter/material.dart';
import 'package:flutter_scaffolding/ui/pages/sample/viewmodel/sample_viewmodel.dart';
import 'package:get/get.dart';

class SamplePage extends StatelessWidget {
  SamplePage({Key? key}) : super(key: key);

  final viewmodel = Get.put(SampleViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sample Page')),
        body: Center(
          child: Obx(() => Text(viewmodel.gretting.value)),
        ));
  }
}
