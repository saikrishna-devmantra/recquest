import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/sign_up_verification_screen/models/sign_up_verification_model.dart';

class SignUpVerificationController extends GetxController {
  TextEditingController otpinputController = TextEditingController();

  Rx<SignUpVerificationModel> signUpVerificationModelObj =
      SignUpVerificationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
