// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:hearing_impairment/route/app_pages.dart';

// class ContentController extends GetxController{

//   final userData = GetStorage();
//   AssetsAudioPlayer audioPlayer1 = AssetsAudioPlayer(); 
//   AssetsAudioPlayer audioPlayer2 = AssetsAudioPlayer(); 
//   AssetsAudioPlayer audioPlayer3 = AssetsAudioPlayer(); 
//   AssetsAudioPlayer audioPlayer4 = AssetsAudioPlayer(); 
//   AssetsAudioPlayer audioPlayer5 = AssetsAudioPlayer(); 
//   bool showPlay = true, result = false;

  
//   final List<String> answer1 = ["Muthu","Eugene","Ali","Ah Kau"];
//   final List<String> answer2 = ["Teddy bear","Daddy bear","Bear","Big bear"];

//   var selectAnswer ;

//   @override
//   void onInit() {

//     loadQuestion();
//     loadAnswer1();
//     loadAnswer2();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     audioPlayer1.dispose();
//     super.dispose();
//   }

//   void loadQuestion(){

//     //1st question
//     audioPlayer1.open(
//       Audio('assets/audios/q1.mp3'),
//       autoStart: false,
//       showNotification: false
//     );
//     audioPlayer1.setVolume(1);

//     //2nd question
//     audioPlayer2.open(
//       Audio('assets/audios/q2.mp3'),
//       autoStart: false,
//       showNotification: false
//     );
//     audioPlayer2.setVolume(1);
//   }

//   //1st question

//   void onClickAnswer1(value) {

//     selectAnswer = value;
//     storeAnswer1(value);
//     update();
//   }

//   void storeAnswer1(value) {

//     userData.write("answer1", value);
//     print(value);
//     if(value == "Eugene"){
//       result = true;
//     }else{
//       result = false;
//     }
//     userData.write("result1", result);
//   }

//   void loadAnswer1(){

//     selectAnswer = (userData.read("answer1")??'');
//   }

//   void playQuestion1(){
//     showPlay =! showPlay;
//     showPlay == false ? audioPlayer1.play() : audioPlayer1.pause();
//     update();
//   }

//   void stopQuestion1(){

//     showPlay = true;
//     audioPlayer1.stop();
//     update();
//   }

//   void navigateToQuestion2(){
    
//     Get.offNamed(AppRoutes.Question2Page);
//   }

//   //2nd question
//   void onClickAnswer2(value) {

//     selectAnswer = value;
//     storeAnswer2(value);
//     update();
//   }

//   void storeAnswer2(value) {

//     userData.write("answer2", value);
//     print(value);
//     if(value == "Eugene"){
//       result = true;
//     }else{
//       result = false;
//     }
//     userData.write("result2", result);
//   }

//   void loadAnswer2(){

//     selectAnswer = (userData.read("answer2")??'');
//   }

//   void playQuestion2(){
//     showPlay =! showPlay;
//     showPlay == false ? audioPlayer2.play() : audioPlayer2.pause();
//     update();
//   }

//   void stopQuestion2(){

//     showPlay = true;
//     audioPlayer2.stop();
//     update();
//   }
  
//   void navigateToQuestion1(){
    
//     Get.offNamed(AppRoutes.Question1Page);
//   }
// }