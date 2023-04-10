import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:syp/src/constants/sizes.dart';
import 'package:syp/src/constants/text_strings.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(
          kEditProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(kDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                          image: AssetImage(kProfileImage),
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: kPrimaryColor,
                      ),
                      child: const Icon(
                        LineAwesomeIcons.camera,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                child: Column(
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
                        onPressed: () =>
                            Get.to(() => const UpdateProfileScreen()),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          side: BorderSide.none,
                          shape: const StadiumBorder(),
                        ),
                        child: const Text(
                          kEditProfile,
                          style: TextStyle(color: kDarkColor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: kFormHeight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       const  Text.rich(
                          TextSpan(
                            text: kJoined,
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                  text: kJoinedAt,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12))
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent.withOpacity(0.1),
                            elevation: 0,
                            foregroundColor: Colors.red,
                            shape: const StadiumBorder(),
                            side: BorderSide.none
                          ),
                          child: const Text(kDelete),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
