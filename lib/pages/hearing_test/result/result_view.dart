import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/result/result_controller.dart';

class ResultView extends GetView<ResultController> {
  
  const ResultView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              controller.logOut();
          }, 
          icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                child: Text("Result",
                  style: TextStyle(
                    fontSize: 38,
                  ),),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  width: screenWidth/2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Q1:  " + controller.result1, 
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 5,),
                      Text("Q2:  " + controller.result2, 
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 5,),
                      Text("Q3:  " + controller.result3, 
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 5,),
                      Text("Q4:  " + controller.result4, 
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 5,),
                      Text("Q5:  " + controller.result5, 
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 5,),
                      Text("Q6:  " + controller.result6, 
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 5,),
                      Text("Q7:  " + controller.result7, 
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 5,),
                      Text("Q8:  " + controller.result8, 
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 5,),
                      Text("Q9:  " + controller.result9, 
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 5,),
                      Text("Q10:  " + controller.result10, 
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  )
                ),
              ),
              SizedBox(height: screenHeight/20,),
              
              Center(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18),
                    children: <TextSpan>[
                      const TextSpan(text: "You have get a total "),
                      TextSpan(text: controller.totalMark.toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
                      const TextSpan(text: " correct answer.",),
                    ]
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Center(
                child: Text(controller.suggestion,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16),),
              ),
              SizedBox(height: screenHeight/20,),
              Center(
                child: IconButton(
                  iconSize: 70,
                  icon: const Icon(Icons.replay_outlined,), 
                  onPressed: () {
                    controller.redoTest();
                  },
                ),
              ),
              const SizedBox(height: 15,),
              const Center(
                child: Text("Redo the test"),
              ),
            ],
          )
        ),
      ),
    );
  }
}