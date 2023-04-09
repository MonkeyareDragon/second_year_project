import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syp/src/features/authentication/controllers/opt_controller.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';


class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var optController = Get.put(OPTController());
    // ignore: prefer_typing_uninitialized_variables
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(kDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(kOTPtitle, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80.0,
            ),),
            Text(kOPTSubTitle.toUpperCase(), style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 40.0,),
            const Text("$kOPTMessage 18limboo@gmail.com", textAlign: TextAlign.center,),
            const SizedBox(height: 20.0),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              keyboardType: TextInputType.number,
              onSubmit: (code){
                otp = code;
                OPTController.instance.verifyOTP(otp);
              }),
            const SizedBox(height: 20.0,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                OPTController.instance.verifyOTP(otp);
              }, child: const Text(kNextText),),
            )
          ],
        ),
      ),
    );
  }
}
