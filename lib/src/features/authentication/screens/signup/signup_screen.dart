import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../login/login_screen.dart';
import 'Widgets/signup_from_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(kDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormHeaderWidget(
                  image: kSignUpImage,
                  title: kSignUpTitle,
                  subTitle: kSignUpSubTitle,
                ),
                const SignUpForm(),
                Column(
                  children: [
                    const Text('OR'),
                    const SizedBox(
                      height: kFormHeight - 25,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: const Text(kSignInWithGoogle),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: kAlreadyHaveAccount,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          TextSpan(text: kLogin.toUpperCase())
                        ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
