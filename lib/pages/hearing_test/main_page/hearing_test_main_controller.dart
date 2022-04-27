import 'package:get/get.dart';
import 'package:hearing_impairment/route/app_pages.dart';

class HearingTestMainController extends GetxController{

  int activeIndex = 0;
  final text = [
    'Simply Test Your Hearing Level',
    'Listen Audio That Given',
    'Choose The Correct Answer',
  ];

  void handleCarusolSliderIndicator(value){
    activeIndex = value;
    update();
  }

  void navigateQuestion1Page(){

    Get.offNamed(AppRoutes.Question1Page);
  }
}