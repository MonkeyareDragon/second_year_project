import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syp/src/features/authentication/controllers/splash_screen_controller.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final screenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    screenController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2200),
              top: screenController.animate.value ? 10 : -160,
              left: screenController.animate.value ? 0 : -30,
              right: screenController.animate.value ? 0 : -30,
              height: MediaQuery.of(context).size.height * 1,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2200),
                opacity: screenController.animate.value ? 1 : 0,
                child: const Image(
                  image: AssetImage(kSplashImageTop),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2200),
              bottom: 100,
              left: screenController.animate.value ? kDefaultSize - 10 : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2200),
                opacity: screenController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      kAppname,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      kAppTagLine,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2200),
              top: screenController.animate.value ? 0 : -30,
              left: screenController.animate.value ? 0 : -250,
              right: screenController.animate.value ? 0 : -30,
              height: MediaQuery.of(context).size.height * 1,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2200),
                opacity: screenController.animate.value ? 1 : 0,
                child: const Image(
                  image: AssetImage(kSplashImageMain),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2200),
              bottom: screenController.animate.value ? 0 : -30,
              left: screenController.animate.value ? 0 : -30,
              right: screenController.animate.value ? 0 : -250,
              height: MediaQuery.of(context).size.height * 1,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2200),
                opacity: screenController.animate.value ? 1 : 0,
                child: const Image(
                  image: AssetImage(kSplashImageBottom),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
