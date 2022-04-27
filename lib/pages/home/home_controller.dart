import 'package:get/get.dart';
import 'package:hearing_impairment/route/app_pages.dart';

class HomeController extends GetxController{

  int activeIndex = 0;
  final images = [
    'assets/images/welcome.png',
    'assets/images/listening.png',
    'assets/images/qna.png'
  ];

  void handleCarusolSliderIndicator(value){
    activeIndex = value;
    update();
  }

  void navigateMainView(){

    Get.offNamed(AppRoutes.HearingTestMainPage);
  }
}