import 'package:eyespot/features/authentication/controller/on_boarding_controller/on_boarding_controller.dart';
import 'package:eyespot/utils/constants/colors.dart';
import 'package:eyespot/utils/constants/sizes.dart';
import 'package:eyespot/utils/device/device_utility.dart';
import 'package:eyespot/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ESizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: OnBoardingController.instance.pageController,
        onDotClicked: OnBoardingController.instance.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? EColors.light : EColors.dark, dotHeight: 6),
      ),
    );
  }
}
