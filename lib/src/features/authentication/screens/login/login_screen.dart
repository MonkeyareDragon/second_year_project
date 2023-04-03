import 'package:flutter/material.dart';
import 'package:syp/src/features/authentication/screens/login/widgets/login_footer_widget.dart';
import 'package:syp/src/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:syp/src/features/authentication/screens/login/widgets/login_header_widget.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(kDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeaderWidget(size: size, image: kLoginImage,),
              const LoginFormWidget(),
              const LoginFooterWidet()
            ],
          ),
        )),
      ),
    );
  }
}
