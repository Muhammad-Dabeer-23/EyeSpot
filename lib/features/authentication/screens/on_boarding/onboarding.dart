import 'package:eyespot/features/authentication/controller/on_boarding_controller/on_boarding_controller.dart';
import 'package:eyespot/features/authentication/screens/on_boarding/widget/onboardingbutton.dart';
import 'package:eyespot/features/authentication/screens/on_boarding/widget/onboardingindecator.dart';
import 'package:eyespot/features/authentication/screens/on_boarding/widget/onboardingscreen.dart';
import 'package:eyespot/features/authentication/screens/on_boarding/widget/onboardingskip.dart';
import 'package:eyespot/utils/constants/image_string.dart';
import 'package:eyespot/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingScreen(
                image: Eimage.onBoardingImage1,
                title: Etext.onBoardingTitle1,
                subTitle: Etext.onBoardingSubTitle1,
              ),
              OnBoardingScreen(
                image: Eimage.onBoardingImage2,
                title: Etext.onBoardingTitle2,
                subTitle: Etext.onBoardingSubTitle2,
              ),
              OnBoardingScreen(
                image: Eimage.onBoardingImage3,
                title: Etext.onBoardingTitle3,
                subTitle: Etext.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingIndicator(),
          const OnBoardingButton(),
        ],
      ),
    );
  }
}
