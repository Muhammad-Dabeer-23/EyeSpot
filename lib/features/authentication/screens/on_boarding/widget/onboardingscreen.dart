import 'package:eyespot/utils/constants/sizes.dart';
import 'package:eyespot/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ESizes.defaultSpace),
      child: Column(children: [
        Image(
          width: EHelperFunctions.screenWidth() * 0.6,
          height: EHelperFunctions.screenHeight() * 0.6,
          image: AssetImage(image),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ]),
    );
  }
}
