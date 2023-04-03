import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: kFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(kFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(
              height: kFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(kEmail),
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(
              height: kFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(kPhoneNo),
                  prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(
              height: kFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(kPassword),
                  prefixIcon: Icon(Icons.security)),
            ),
            const SizedBox(
              height: kFormHeight - 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(kSignup),
              ),
            )
          ],
        ),
      ),
    );
  }
}
