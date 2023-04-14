import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../../../core/screens/maindashboard/dashboard_screen.dart';
import '../../forget_password/forget_password_options/forget_password_model_botton_sheet.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kFormHeight - 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: kEmail,
                  hintText: kEmail,
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: kFormHeight,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.security),
                  labelText: kPassword,
                  hintText: kPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  )),
            ),
            const SizedBox(
              height: kFormHeight - 20,
            ),

            //-Forget Password BTM
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModelBottomSheet(context);
                },
                child: const Text(kForgetPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const DashboardScreen()),
                child: Text(kLogin.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
