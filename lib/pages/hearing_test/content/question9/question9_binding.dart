import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question9/question9_controller.dart';

class NinthQuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Question9Controller>(
      () => Question9Controller(),
    );
  }
}