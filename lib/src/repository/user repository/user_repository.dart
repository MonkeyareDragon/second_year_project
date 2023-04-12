// Creating a user repository to perform database operations

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/authentication/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UsersModel user) async {
    await _db.collection("Users").add(user.toJson())
    .whenComplete(
          () => Get.snackbar(
            "Sucess",
            "Your account has been created.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green),
    )
    // ignore: body_might_complete_normally_catch_error
    .catchError((error, stackTrace) {
      Get.snackbar("Error", "Something went wrong. Try again",
      snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.redAccent.withOpacity(0.1),
            colorText: Colors.red);
      // ignore: avoid_print
      print(error.toSting());
    });
  }
}
