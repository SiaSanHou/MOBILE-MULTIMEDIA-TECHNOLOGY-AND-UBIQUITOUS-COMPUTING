import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/content/question8/question8_controller.dart';

class EighthQuestionView extends GetView<Question8Controller> {
  const EighthQuestionView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              controller.logOutDialog();
          }, 
          icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text("Question 8",
                  style: TextStyle(
                    fontSize: 30,
                  ),),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text("Please choose the correct answer that you heard.",
                  style: TextStyle(
                    fontSize: 16,
                  ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenHeight/4,
                    width: screenWidth/2.5,
                    child: GetBuilder<Question8Controller>(
                      init: Question8Controller(),
                      builder: (controller) {
                        return IconButton(
                          onPressed: (){
                            controller.playQuestion();
                          }, 
                          icon: controller.showPlay == true 
                          ? const Icon(Icons.play_arrow,size: 80,)
                          : const Icon(Icons.pause,size: 80,)
                        );
                      },
                    ),
                  ),
                  Container(
                    height: screenHeight/4,
                    width: screenWidth/2.5,
                    child: GetBuilder<Question8Controller>(
                      init: Question8Controller(),
                      builder: (controller) {
                        return IconButton(
                          onPressed: (){
                            controller.stopQuestion();
                          }, 
                          icon: const Icon(Icons.stop,size: 80,)
                        );
                      },
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: screenHeight/30,),
              const Text("What time does Tom get up from bed ?"),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: [
                    GetBuilder<Question8Controller>(
                      init: Question8Controller(),
                      builder: (controller) {
                        return ListTile(
                          title: const Text("a. 7 morning"),
                          trailing: Radio(
                            value: controller.answer[0],
                            groupValue: controller.selectAnswer,
                            onChanged: (value) {
                              controller.onClickAnswer(value);
                            }),
                        );
                      },
                    ),
                    GetBuilder<Question8Controller>(
                      init: Question8Controller(),
                      builder: (controller) {
                        return ListTile(
                          title: const Text("b. 8 morning"),
                          trailing: Radio(
                            value: controller.answer[1],
                            groupValue: controller.selectAnswer,
                            onChanged: (value) {
                              controller.onClickAnswer(value);
                            }),
                        );
                      },
                    ),
                    GetBuilder<Question8Controller>(
                      init: Question8Controller(),
                      builder: (controller) {
                        return ListTile(
                          title: const Text("c. 10 morning"),
                          trailing: Radio(
                            value: controller.answer[2],
                            groupValue: controller.selectAnswer,
                            onChanged: (value) {
                              controller.onClickAnswer(value);
                            }),
                        );
                      },
                    ),
                    GetBuilder<Question8Controller>(
                      init: Question8Controller(),
                      builder: (controller) {
                        return ListTile(
                          title: const Text("d. 8.30 morning"),
                          trailing: Radio(
                            value: controller.answer[3],
                            groupValue: controller.selectAnswer,
                            onChanged: (value) {
                              controller.onClickAnswer(value);
                            }),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight/30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: IconButton(
                      onPressed: (){
                        controller.navigateToQuestion7();
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: IconButton(
                      onPressed: (){
                        controller.navigateToQuestion9();
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}