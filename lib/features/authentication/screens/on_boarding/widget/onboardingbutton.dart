import 'package:eyespot/features/authentication/controller/on_boarding_controller/on_boarding_controller.dart';
import 'package:eyespot/utils/constants/colors.dart';
import 'package:eyespot/utils/constants/sizes.dart';
import 'package:eyespot/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight(),
      right: ESizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: EColors.primary,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
