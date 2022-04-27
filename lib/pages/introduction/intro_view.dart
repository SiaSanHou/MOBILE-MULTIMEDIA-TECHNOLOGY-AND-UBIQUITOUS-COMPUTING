import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hearing_impairment/pages/introduction/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150
              ),
              Image.asset(
                'assets/images/logo.png',
                height: screenHeight / 3,
                width: screenWidth / 1.1,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text("Bibi",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 38
                  ),),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 50),
                child: Text("Hearing Test App",
                  style: TextStyle(
                    fontSize: 44
                  ),),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minWidth: screenWidth / 2,
                height: screenHeight / 18,
                color: Colors.blue[400],
                onPressed: () {
                  controller.navigateSignIn();
                },
                child: const Text("Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              ),
              const SizedBox(height: 30),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minWidth: screenWidth / 2,
                height: screenHeight / 18,
                color: Colors.blue[400],
                onPressed: () {
                  controller.navigateSignUp();
                },
                child: const Text("Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              ),
            ],
          )
        ),
      ),
    );
  }
}