import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hearing_impairment/route/app_pages.dart';

class SignUpController extends GetxController{

  late TextEditingController emailController = TextEditingController();
  late TextEditingController userNameController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController confirmPasswordController = TextEditingController();

  void navigateSignIn(){

    Get.offNamed(AppRoutes.SignIn);
  }

  void clearTextField(){
    emailController.clear();
    userNameController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  void signUpDialog(){

    Get.defaultDialog(
      title: "Are you sure ?",
      content: Column(
        children: [],
      ),
      textConfirm: "Yes",
      textCancel: "No",
      onConfirm: () {
        Get.back();
        checkSignUp();
      },
      onCancel: () => Get.back(),
      cancelTextColor: Colors.blue,
      confirmTextColor: Colors.white,
      buttonColor: Colors.blue[400],
    );
  }

  void checkSignUp(){

    String email = emailController.text.toString();
    String username = userNameController.text.toString();
    String password = passwordController.text.toString();
    String confirmPassword = confirmPasswordController.text.toString();

    if(email.isEmpty && username.isEmpty && password.isEmpty && confirmPassword.isEmpty){

      Get.snackbar(
        "Error","Please fill in all textfield",
        backgroundColor: Colors.white60,
        colorText: Colors.black,
        icon: const Icon(Icons.error, color: Colors.black),
        snackPosition: SnackPosition.TOP,
      );
    
    }else if (email.isEmpty){

      Get.snackbar(
        "Error","Email is empty",
        backgroundColor: Colors.white60,
        colorText: Colors.black,
        icon: const Icon(Icons.error, color: Colors.black),
        snackPosition: SnackPosition.TOP,  
      );

    }else if (username.isEmpty){

      Get.snackbar(
        "Error","Username is empty",
        backgroundColor: Colors.white60,
        colorText: Colors.black,
        icon: const Icon(Icons.error, color: Colors.black),
        snackPosition: SnackPosition.TOP,  
      );

    }else if (password.isEmpty || confirmPassword.isEmpty){

      Get.snackbar(
        "Error","Password is empty",
        backgroundColor: Colors.white60,
        colorText: Colors.black,
        icon: const Icon(Icons.error, color: Colors.black),
        snackPosition: SnackPosition.TOP,  
      );

    }else if (password!=confirmPassword || confirmPassword!=password){

      Get.snackbar(
        "Error","Both password is different",
        backgroundColor: Colors.white60,
        colorText: Colors.black,
        icon: const Icon(Icons.error, color: Colors.black),
        snackPosition: SnackPosition.TOP,  
      );

    }else{

      Get.snackbar(
        "Success","Sign Up Successful",
        backgroundColor: Colors.white60,
        colorText: Colors.black,
        snackPosition: SnackPosition.TOP,  
      );
      
    }
  }
}