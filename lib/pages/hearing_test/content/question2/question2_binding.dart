import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question2/question2_controller.dart';

class SecondQuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Question2Controller>(
      () => Question2Controller(),
    );
  }
}