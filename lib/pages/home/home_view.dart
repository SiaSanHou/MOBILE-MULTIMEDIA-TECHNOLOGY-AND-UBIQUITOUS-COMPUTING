import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hearing_impairment/pages/home/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({ Key? key }) : super(key: key);

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
                padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
                child: Text("Welcome",
                  style: TextStyle(
                    fontSize: 50,
                  ),),
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: screenHeight/3,
                  onPageChanged: (index, reason){
                    controller.handleCarusolSliderIndicator(index);
                  }
                ),
                itemCount: controller.images.length, 
                itemBuilder: (context, index, realIndex){
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Image.asset(
                      controller.images[index],
                      fit: BoxFit.cover,)
                  );
                }
              ),
              GetBuilder<HomeController>(
                init: HomeController(),
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 30),
                    child: AnimatedSmoothIndicator(
                      activeIndex: controller.activeIndex, 
                      count: controller.images.length,
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
                  controller.navigateMainView();
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
                    controller.navigateMainView();
                  },
                  child: const Text("Next",
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