import 'dart:async';

import 'package:get/get.dart';
import 'package:hearing_impairment/route/app_pages.dart';

class SplashController extends GetxController{

  @override
  void onReady() {
    super.onReady();
    loading();
  }

  Future<void> loading() async {

    Timer(const Duration(seconds: 3), () {

      Get.offAllNamed(AppRoutes.Intro);
    }
    
    );
  }
}