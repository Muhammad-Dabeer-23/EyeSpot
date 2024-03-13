import 'package:eyespot/features/personalization/screens/home_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// import 'package:eyespot/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentpageindex = 0.obs;

  void updatePageIndicator(index) => currentpageindex.value = index;
  void dotNavigationClick(index) {
    currentpageindex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentpageindex.value == 2) {
      Get.offAll(HomeScreen());
    } else {
      int page = currentpageindex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    const page = 2;
    pageController.jumpToPage(page);
  }
}
