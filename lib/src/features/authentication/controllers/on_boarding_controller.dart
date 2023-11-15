import 'package:flutter/material.dart';
import 'package:flutter_application/src/common_widgets/on_boarding_page.dart';
import 'package:flutter_application/src/constants/colors.dart';
import 'package:flutter_application/src/constants/image_strings.dart';
import 'package:flutter_application/src/constants/text_strings.dart';
import 'package:flutter_application/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter_application/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingController extends GetxController {
  RxInt currentPage = 0.obs;
  final controller = LiquidController();

  final pages = [
    OnBoardingPageWidget(
      model: onBiardingModel(
          image: tOnBoardingImage1,
          title: tOnBoardingTitle1,
          subTitle: tOnBoardingSubTitle1,
          counterText: tOnBoardingCounter1,
          bgColor: tOnBoardingPageColor),
    ),
    OnBoardingPageWidget(
      model: onBiardingModel(
          image: tOnBoardingImage2,
          title: tOnBoardingTitle2,
          subTitle: tOnBoardingSubTitle2,
          counterText: tOnBoardingCounter2,
          bgColor: tOnBoardingPage2Color),
    ),
    OnBoardingPageWidget(
      model: onBiardingModel(
          image: tOnBoardingImage3,
          title: tOnBoardingTitle3,
          subTitle: tOnBoardingSubTitle3,
          counterText: tOnBoardingCounter3,
          bgColor: tOnBoardingPage3Color),
    )
  ];

  OnPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  void skip(BuildContext context) {
    // controller.jumpToPage(page: 2);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomeScreen()),
    );
    //  Get.put(MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(
      page: nextPage,
      duration: 500,
    );
  }
}
