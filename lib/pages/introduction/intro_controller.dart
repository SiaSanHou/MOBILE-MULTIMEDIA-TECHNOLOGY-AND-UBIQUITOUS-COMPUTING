import 'package:get/get.dart';
import 'package:hearing_impairment/route/app_pages.dart';

class IntroController extends GetxController{

  void navigateSignUp(){

    Get.offNamed(AppRoutes.Signup);
  }

  void navigateSignIn(){

    Get.offNamed(AppRoutes.SignIn);
  }
}