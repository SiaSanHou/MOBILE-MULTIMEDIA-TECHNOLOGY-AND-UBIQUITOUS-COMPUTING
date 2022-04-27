import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hearing_impairment/pages/signup/signup_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text("Sign Up",
          style:TextStyle(
            fontSize:24
          )),
      ),
      body:SingleChildScrollView(
        child: Center(
          child:Padding(
            padding: const EdgeInsets.fromLTRB(25,15,25,0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: screenHeight / 4,
                  width: screenWidth / 1.1,),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text("Please fill the details below",
                          style: TextStyle(
                            fontSize:20,
                          ),),
                      ),
                      Padding(
                        padding:const EdgeInsets.fromLTRB(15,0,15,0),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          controller: controller.userNameController,
                          decoration: const InputDecoration(
                            labelText: 
                            "Username",),
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.fromLTRB(15,0,15,0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          decoration: const InputDecoration(
                            labelText: 
                            "Email",),
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.fromLTRB(15,0,15,0),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          controller: controller.passwordController,
                          decoration: const InputDecoration(
                            labelText: 
                            "Password",),
                            obscureText: true,
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.fromLTRB(15,0,15,0),
                        child: TextField(
                          controller: controller.confirmPasswordController,
                          decoration: const InputDecoration(
                            labelText: 
                            "Re type password",),
                          obscureText: true,
                        )
                      ),
                      Padding(
                        padding:const EdgeInsets.fromLTRB(0,20,0,15),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text: "* Please"),
                              TextSpan(text: " make sure", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: " the details you have enter is"),
                              TextSpan(text: " correct.", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                const SizedBox(height:10),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: screenHeight/18,
                  minWidth: screenWidth/2.5,
                  color: Colors.blue[400],
                  onPressed: (){
                    controller.signUpDialog();
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                    )),
                ),
                const SizedBox(height:15),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: screenHeight/18,
                  minWidth: screenWidth/2.5,
                  color: Colors.blue[400],
                  onPressed: (){
                    controller.clearTextField();
                  },
                  child: const Text(
                    "Clear All",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                    )),
                ),
                const SizedBox(height:15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account ?",
                      style: TextStyle(
                        fontSize: 16,
                      )),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        controller.navigateSignIn();
                      },
                      child: const Text(
                        "Sign In",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                    )
                  ],
                )
              ],
            ),
          )
        ),
      )
    );
  }
}