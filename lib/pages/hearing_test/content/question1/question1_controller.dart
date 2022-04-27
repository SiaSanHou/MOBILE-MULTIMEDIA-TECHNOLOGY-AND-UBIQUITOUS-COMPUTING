import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hearing_impairment/route/app_pages.dart';

class Question1Controller extends GetxController{

  final userData = GetStorage();
  AssetsAudioPlayer audioPlayer1 = AssetsAudioPlayer(); 
  bool showPlay = true, result = false;
  
  final List<String> answer1 = ["Muthu","Eugene","Ali","Ah Kau"];

  var selectAnswer ;

  @override
  void onInit() {

    loadQuestion();
    loadAnswer();
    super.onInit();
  }

  @override
  void dispose() {
    audioPlayer1.dispose();
    super.dispose();
  }

  void loadQuestion(){

    //1st question
    audioPlayer1.open(
      Audio('assets/audios/q1.mp3'),
      autoStart: false,
      showNotification: false
    );
    audioPlayer1.setVolume(1);
  }

  //1st question

  void onClickAnswer(value) {

    selectAnswer = value;
    storeAnswer(value);
    update();
  }

  void storeAnswer(value) {

    userData.write("answer1", value);
    print(value);
    if(value == "Eugene"){
      result = true;
    }else{
      result = false;
    }
    userData.write("result1", result);
  }

  void loadAnswer(){

    selectAnswer = (userData.read("answer1")??'');
  }

  void playQuestion(){
    showPlay =! showPlay;
    showPlay == false ? audioPlayer1.play() : audioPlayer1.pause();
    update();
  }

  void stopQuestion(){

    showPlay = true;
    audioPlayer1.stop();
    update();
  }

  void navigateToQuestion2(){
    
    Get.offNamed(AppRoutes.Question2Page);
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