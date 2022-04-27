import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question6/question6_controller.dart';

class SixthQuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Question6Controller>(
      () => Question6Controller(),
    );
  }
}