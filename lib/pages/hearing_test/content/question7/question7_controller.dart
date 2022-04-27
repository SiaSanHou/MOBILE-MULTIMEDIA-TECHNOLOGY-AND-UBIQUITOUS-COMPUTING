import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hearing_impairment/route/app_pages.dart';

class Question7Controller extends GetxController{

  final userData = GetStorage();
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer(); 
  bool showPlay = true, result = false;
  
  final List<String> answer = ["7 classes","5 classes","3 classes","4 classes"];

  var selectAnswer ;

  @override
  void onInit() {

    loadQuestion();
    loadAnswer();
    super.onInit();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void loadQuestion(){

    audioPlayer.open(
      Audio('assets/audios/q7.mp3'),
      autoStart: false,
      showNotification: false
    );
    audioPlayer.setVolume(1);
  }

  void onClickAnswer(value) {

    selectAnswer = value;
    storeAnswer(value);
    update();
  }

  void storeAnswer(value) {

    userData.write("answer7", value);
    print(value);
    if(value == "5 classes"){
      result = true;
    }else{
      result = false;
    }
    userData.write("result7", result);
  }

  void loadAnswer(){

    selectAnswer = (userData.read("answer7")??'');
  }

  void playQuestion(){
    showPlay =! showPlay;
    showPlay == false ? audioPlayer.play() : audioPlayer.pause();
    update();
  }

  void stopQuestion(){

    showPlay = true;
    audioPlayer.stop();
    update();
  }
  
  void navigateToQuestion6(){
    
    Get.offNamed(AppRoutes.Question6Page);
  }

  void navigateToQuestion8(){
    
    Get.offNamed(AppRoutes.Question8Page);
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

  void logOutDialog(){

    Get.defaultDialog(
      title: "Alert !!!",
      content: Column(
        children: const [
          Text("Are you want to quit the test ?"),
        ],
      ),
      textConfirm: "Yes",
      textCancel: "No",
      onConfirm: () {
        logOut();
      },
      onCancel: () => Get.back(),
      cancelTextColor: Colors.blue,
      confirmTextColor: Colors.white,
      buttonColor: Colors.blue,
    );
  }

  void logOut(){

    clearGetStorage();
    Get.offAllNamed(AppRoutes.SignIn);

  }
}