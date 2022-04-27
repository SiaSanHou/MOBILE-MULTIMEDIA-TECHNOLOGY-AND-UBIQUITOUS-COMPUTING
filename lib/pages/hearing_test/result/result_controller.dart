import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hearing_impairment/route/app_pages.dart';

class ResultController extends GetxController{

  final userData = GetStorage();
  late String result1;
  late String result2;
  late String result3;
  late String result4;
  late String result5;
  late String result6;
  late String result7;
  late String result8;
  late String result9;
  late String result10;
  late int mark = 0, totalMark = 0;
  late String suggestion = "a";

  @override
  void onInit() {
    loadResult();
    loadSuggestions(totalMark);
    super.onInit();
  }

  void loadResult(){

    result1 = (userData.read("result1")??'').toString();
    result2 = (userData.read("result2")??'').toString();
    result3 = (userData.read("result3")??'').toString();
    result4 = (userData.read("result4")??'').toString();
    result5 = (userData.read("result5")??'').toString();
    result6 = (userData.read("result6")??'').toString();
    result7 = (userData.read("result7")??'').toString();
    result8 = (userData.read("result8")??'').toString();
    result9 = (userData.read("result9")??'').toString();
    result10 = (userData.read("result10")??'').toString();

    if(result1 == "true"){
      mark++;
    }
    if(result2 == "true"){
      mark++;
    }
    if(result3 == "true"){
      mark++;
    }
    if(result4 == "true"){
      mark++;
    }
    if(result5 == "true"){
      mark++;
    }
    if(result6 == "true"){
      mark++;
    }
    if(result7 == "true"){
      mark++;
    }
    if(result8 == "true"){
      mark++;
    }
    if(result9 == "true"){
      mark++;
    }
    if(result10 == "true"){
      mark++;
    }

    totalMark = mark;
    loadSuggestions(totalMark);
    
  }

  void loadSuggestions(int totalResult){

    if(totalResult >= 0 && totalResult <= 4){

      suggestion = "Oops, it seems that you have low hearing level, you might need to see the doctor.";
    }else if(totalResult >= 5 && totalResult <= 7){

      suggestion = "You have moderate hearing level, please take care of yourself.";
    }else{

      suggestion = "Well done, you are excellent in hearing, keep it up!";
    }
  }

  void clearGetStorage(){

    userData.write("answer1", '');
    userData.write("result1", '');

    userData.write("answer2", '');
    userData.write("result2", '');

    userData.write("answer3", '');
    userData.write("result3", '');

    userData.write("answer4", '');
    userData.write("result4", '');

    userData.write("answer5", '');
    userData.write("result5", '');

    userData.write("answer6", '');
    userData.write("result6", '');

    userData.write("answer7", '');
    userData.write("result7", '');

    userData.write("answer8", '');
    userData.write("result8", '');

    userData.write("answer9", '');
    userData.write("result9", '');

    userData.write("answer10", '');
    userData.write("result10", '');
  }

  void redoTest(){

    clearGetStorage();
    Get.offNamed(AppRoutes.HearingTestMainPage);

  }

  void logOut(){

    clearGetStorage();
    Get.offAllNamed(AppRoutes.SignIn);

  }
}