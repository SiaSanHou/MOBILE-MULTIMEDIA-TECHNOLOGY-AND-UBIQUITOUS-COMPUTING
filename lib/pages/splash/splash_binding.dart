import 'package:get/get.dart';
import 'package:hearing_impairment/pages/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController(),);
  }
}