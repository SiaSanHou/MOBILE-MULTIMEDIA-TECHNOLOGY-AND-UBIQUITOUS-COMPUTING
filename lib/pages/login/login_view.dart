import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hearing_impairment/pages/login/login_controller.dart';

class SignInView extends GetView<LoginController> {
  const SignInView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.blue[400],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 10),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: screenHeight / 3,
                  width: screenWidth / 1.1,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text("Please key in your: ",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize:20,
                        ),),
                    ),
                    GetBuilder<LoginController>(
                      init: LoginController(),
                      builder: (_) {
                        return ListTile(
                          title: TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _.usernameController,
                            decoration: const InputDecoration(
                              hintText: "Username",
                            ),
                          ),
                        );
                      },
                    ),
                    GetBuilder<LoginController>(
                      init: LoginController(),
                      builder: (_) {
                        return ListTile(
                          title: TextField(
                            keyboardType: TextInputType.text,
                            controller: _.passwordController,
                            decoration: const InputDecoration(
                              hintText: "Password",
                            ),
                            obscureText: true,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    GetBuilder<LoginController>(
                      init: LoginController(),
                      builder: (controller) {
                        return Checkbox(
                            value: controller.rememberMe,
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              controller.rememberEmailPassword(
                                  value!,
                                  controller.usernameController.text.toString(),
                                  controller.passwordController.text.toString(),
                              );
                            });
                      },
                    ),
                    const Text("Remember Me", style: TextStyle(fontSize: 16)),
                  ],
                ),
              GestureDetector(
                  onTap: () {
                    controller.forgotPasswordDialog();
                  },
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minWidth: screenWidth / 1.1,
                  height: screenHeight / 18,
                  color: Colors.blue[400],
                  onPressed: () {
                    controller.loginHome(
                      controller.usernameController.text.toString(),
                      controller.passwordController.text.toString(),
                    );
                  },
                  child: const Text("Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account ?",
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.navigateSignUp();
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    ],
                  ))
            ],
          ),
        )),
    );
  }
}