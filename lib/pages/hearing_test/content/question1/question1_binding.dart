import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question1/question1_controller.dart';

class FirstQuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Question1Controller>(
      () => Question1Controller(),
    );
  }
}