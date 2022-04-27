import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question10/question10_controller.dart';

class TenthQuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Question10Controller>(
      () => Question10Controller(),
    );
  }
}