import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../forget_password_mail/forget_password_mail.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModelBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(kDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kForgetPasswordtitle,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              kForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 30.0,
            ),
            ForgetPasswordButtonWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: kEmail,
              subtitle: kResetViaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ForgetPasswordButtonWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: kPhoneNo,
              subtitle: kResetViaPhone,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
