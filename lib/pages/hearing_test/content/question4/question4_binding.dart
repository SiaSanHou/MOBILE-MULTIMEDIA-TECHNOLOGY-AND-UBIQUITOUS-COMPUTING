import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question4/question4_controller.dart';

class ForthQuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Question4Controller>(
      () => Question4Controller(),
    );
  }
}