import 'package:eyespot/features/authentication/controller/on_boarding_controller/on_boarding_controller.dart';
import 'package:eyespot/utils/constants/sizes.dart';
import 'package:eyespot/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EDeviceUtils.getAppBarHeight(),
      right: ESizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text(
          "Skip",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
