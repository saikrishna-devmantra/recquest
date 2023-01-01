import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController groupFiftyFiveController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController groupFiftyFourController = TextEditingController();

  TextEditingController groupFiftySixController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyFiveController.dispose();
    emailController.dispose();
    groupFiftyFourController.dispose();
    groupFiftySixController.dispose();
  }
}
