import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question8/question8_controller.dart';

class EighthQuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Question8Controller>(
      () => Question8Controller(),
    );
  }
}