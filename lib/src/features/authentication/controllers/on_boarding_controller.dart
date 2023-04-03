import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';
import '../screens/welcome_screen/welcome_screen.dart';


class OnBoardingController extends GetxController{
  
  final controller = LiquidController();
  final pagejump = PageController();
  RxInt currentPage = 0.obs;

  final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: kOnBoardingImage1,
          title: kOnBoardingTitle1,
          subTitle: kOnBoardingSubTitle1,
          counterText: kOnBoardingCounter1,
          bgColor: kOnBoardingPage1Color,
        ),
      ),

      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: kOnBoardingImage2,
          title: kOnBoardingTitle2,
          subTitle: kOnBoardingSubTitle2,
          counterText: kOnBoardingCounter2,
          bgColor: kOnBoardingPage2Color,
        ),
      ),

      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: kOnBoardingImage3,
          title: kOnBoardingTitle3,
          subTitle: kOnBoardingSubTitle3,
          counterText: kOnBoardingCounter3,
          bgColor: kOnBoardingPage3Color,
        ),
      ),
    ];
    void onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;

    animateToNextSilde(){
      int nextPage = controller.currentPage + 1;
      controller.animateToPage(page: nextPage);
    }

    // skip() => controller.jumpToPage(page: 2);
    skip() => Get.to(() => const WelcomeScreen());
    
    

  
}