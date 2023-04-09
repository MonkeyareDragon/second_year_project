import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syp/src/features/authentication/controllers/signup_controller.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formkey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: kFormHeight - 10),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                  label: Text(kFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(
              height: kFormHeight - 20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  label: Text(kEmail), prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(
              height: kFormHeight - 20,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                  label: Text(kPhoneNo), prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(
              height: kFormHeight - 20,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  label: Text(kPassword), prefixIcon: Icon(Icons.security)),
            ),
            const SizedBox(
              height: kFormHeight - 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    SignUpController.instance.registerUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());
                  }
                },
                child: const Text(kSignup),
              ),
            )
          ],
        ),
      ),
    );
  }
}
