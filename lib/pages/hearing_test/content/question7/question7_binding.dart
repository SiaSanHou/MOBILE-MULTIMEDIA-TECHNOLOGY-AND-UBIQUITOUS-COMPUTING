import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question7/question7_controller.dart';

class SeventhQuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Question7Controller>(
      () => Question7Controller(),
    );
  }
}