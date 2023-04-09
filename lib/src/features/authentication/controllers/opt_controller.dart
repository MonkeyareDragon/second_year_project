import 'package:get/get.dart';
import 'package:syp/src/features/core/screens/maindashboard/dashboard.dart';
import 'package:syp/src/repository/authentication_repository/authentication_repository.dart';

class OPTController extends GetxController {
  static OPTController get instance => Get.find();


  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const DashBoard()) : Get.back();
  }
}