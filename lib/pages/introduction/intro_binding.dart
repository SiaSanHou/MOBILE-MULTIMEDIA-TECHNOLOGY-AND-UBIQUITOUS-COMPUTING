import 'package:get/get.dart';
import 'package:hearing_impairment/pages/introduction/intro_controller.dart';

class IntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroController>(
      () => IntroController(),
    );
  }
}