import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hearing_impairment/pages/hearing_test/main_page/hearing_test_main_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HearingTestMainPage extends GetView<HearingTestMainController> {
  const HearingTestMainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bibi Hearing Test"),
        backgroundColor: Colors.blue[400],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                child: Text("Start the test",
                  style: TextStyle(
                    fontSize: 50,
                  ),),
              ),
              Image.asset('assets/images/logo.png'),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: screenHeight/24,
                  onPageChanged: (index, reason){
                    controller.handleCarusolSliderIndicator(index);
                  }
                ),
                itemCount: controller.text.length, 
                itemBuilder: (context, index, realIndex){
                  return Text(
                    controller.text[index],
                    style: const TextStyle(
                      fontSize: 22,
                    ),
                  );
                }
              ),
              GetBuilder<HearingTestMainController>(
                init: HearingTestMainController(),
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                    child: AnimatedSmoothIndicator(
                      activeIndex: controller.activeIndex, 
                      count: controller.text.length,
                      effect: const SlideEffect(
                        dotWidth: 20,
                        dotHeight: 20,
                        activeDotColor: Colors.blue,
                        dotColor: Colors.grey,
                      ),
                    ),
                  );
                },
              ),
              GestureDetector(
                onTap: () {
                  controller.navigateQuestion1Page();
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minWidth: screenWidth / 1.1,
                  height: screenHeight / 18,
                  color: Colors.blue[400],
                  onPressed: () {
                    controller.navigateQuestion1Page();
                  },
                  child: const Text("Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}