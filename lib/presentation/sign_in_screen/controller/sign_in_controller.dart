import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordOneController.dispose();
  }
}
