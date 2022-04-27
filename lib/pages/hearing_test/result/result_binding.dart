import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/result/result_controller.dart';

class ResultBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ResultController>(
      () => ResultController(),
    );
  }
}