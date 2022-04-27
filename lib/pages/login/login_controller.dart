import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hearing_impairment/route/app_pages.dart';

class LoginController extends GetxController{
  
  final appData = GetStorage(); 
  late TextEditingController usernameController, passwordController, forgotPasswordEmailController;
  var rememberMe = false;

  @override
  void onInit() {

    super.onInit();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    forgotPasswordEmailController = TextEditingController();
    loadPreference();
  }

  void navigateSignUp(){

    Get.offNamed(AppRoutes.Signup);
  }

  void loginHome(username, password){

    if(username.isEmpty || password.isEmpty){

      Get.snackbar(
        "Error","Username Password is empty",
        backgroundColor: Colors.white60,
        colorText: Colors.black,
        icon: const Icon(Icons.error, color: Colors.black),
        snackPosition: SnackPosition.TOP,  
      );
      return;
    }else{

      Get.offNamed(AppRoutes.HomePage);
    }
  }

  void rememberEmailPassword (value, username, password){

    if(username.isEmpty || password.isEmpty){

      Get.snackbar(
        "Error","Username Password is empty",
        backgroundColor: Colors.white60,
        colorText: Colors.black,
        icon: const Icon(Icons.error, color: Colors.black),
        snackPosition: SnackPosition.TOP,  
      );
      return;
    }
    rememberMe = value;
    storePreference(value, username, password);
    update();
  }

  Future<void> storePreference(bool value,String username, String password,) async {
    
    if(value==true){

      appData.write("username", username);
      appData.write("password", password);
      appData.write("rememberme", value);

      Get.snackbar(
        "Message","Username Password stored",
        backgroundColor: Colors.white60,
        colorText: Colors.black,
        icon: const Icon(Icons.error, color: Colors.black),
        snackPosition: SnackPosition.TOP,  
      );
    return;
    }else{  
      
      appData.write("username", '');
      appData.write("password", '');
      appData.write("rememberme", value);

      Get.snackbar(
        "Message","Removed Email Password",
        backgroundColor: Colors.white60,
        colorText: Colors.black,
        icon: const Icon(Icons.error, color: Colors.black),
        snackPosition: SnackPosition.TOP,  
      );
      usernameController.text = "";
      passwordController.text = "";
      rememberMe = false ;
      update();
      return;
    }
  }

  Future<void> loadPreference()async {

    String username = appData.read("username")??'';
    String password = appData.read("password")??'';
    rememberMe= (appData.read("rememberme")??false);

    usernameController.text=username;
    passwordController.text=password;
    update();
  }

  void forgotPasswordDialog(){

    Get.defaultDialog(
      title: "Forgot Your Password ?",
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15,0,15,0),
            child: TextField(
              controller: forgotPasswordEmailController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                 hintText: "Email"
              ),
            ),
          )
        ],
      ),
      textConfirm: "Submit",
      textCancel: "Cancel",
      onConfirm:() => Get.back(),
      onCancel: () => Get.back(),
      cancelTextColor: Colors.blue[400],
      confirmTextColor: Colors.white,
      buttonColor: Colors.blue[400],
    );
  }
}