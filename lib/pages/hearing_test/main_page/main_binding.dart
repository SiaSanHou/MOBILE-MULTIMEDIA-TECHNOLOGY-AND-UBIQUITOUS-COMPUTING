import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/main_page/hearing_test_main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HearingTestMainController>(
      () => HearingTestMainController(),
    );
  }
}