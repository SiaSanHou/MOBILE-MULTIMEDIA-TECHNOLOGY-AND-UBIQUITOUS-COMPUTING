import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question3/question3_controller.dart';

class ThirdQuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Question3Controller>(
      () => Question3Controller(),
    );
  }
}