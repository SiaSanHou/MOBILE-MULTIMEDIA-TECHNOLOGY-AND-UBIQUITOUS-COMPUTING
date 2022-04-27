import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question5/question5_controller.dart';

class FifthQuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Question5Controller>(
      () => Question5Controller(),
    );
  }
}