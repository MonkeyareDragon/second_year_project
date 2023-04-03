import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syp/src/constants/image_strings.dart';
import 'package:syp/src/constants/sizes.dart';
import 'package:syp/src/constants/text_strings.dart';
import '../../../../constants/colors.dart';
import '../login/login_screen.dart';
import '../signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? kSecondaryColor : kPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(kDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: const AssetImage(kWelcomeScreenImage),
              height: height * 0.6,
            ),
            Text(
              kWelcomeTitle,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              kWelcomeSubtitle,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: Text(kLogin.toUpperCase()),
                  ),
                ),
                const SizedBox(
                        width: 10.0,
                      ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const SignUpScreen()),
                    child: Text(kSignup.toUpperCase()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
