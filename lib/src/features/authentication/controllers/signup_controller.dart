import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syp/src/repository/authentication_repository/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //TextField Controller for get data from Textfields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser(String email, String password){
    String? error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String?;
    if (error != null){
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }


  //Get phone number form user and pass it to authenatication respository for firebase authentication
  void phoneAuthentication(String phoneNo){
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}
