// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application/src/constants/colors.dart';
import 'package:flutter_application/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: controller.pages,
            slideIconWidget: Icon(Icons.arrow_back_ios_new),
            enableSideReveal: true,
            liquidController: controller.controller,
            onPageChangeCallback: controller.OnPageChangeCallback,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                onPressed: () {
                  controller.animateToNextSlide();
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: EdgeInsets.all(20),
                  foregroundColor: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.arrow_forward),
                  decoration: BoxDecoration(
                    color: tDarlColor,
                    shape: BoxShape.circle,
                  ),
                ),
              )),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () {
                  controller.skip(context);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          Obx(
            () => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                    activeIndex: controller.currentPage.value,
                    count: 3,
                    effect: const WormEffect(
                      activeDotColor: Color(0xff272727),
                      dotHeight: 5.0,
                    ))),
          )
        ],
      ),
    );
  }
}
