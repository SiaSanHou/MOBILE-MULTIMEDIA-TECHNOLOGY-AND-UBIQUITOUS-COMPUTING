import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashView extends StatelessWidget {
  const SplashView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png",
            height: screenHeight/2,
            width: screenWidth/1.3,
            fit: BoxFit.fitWidth,),
            SpinKitRotatingCircle(
              color: Colors.blue[200],
              size: 40.0,
            ),
            const SizedBox(height:15),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Hearing Test App',
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.lightBlue,
                  ),
                  speed: const Duration(milliseconds: 150),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}