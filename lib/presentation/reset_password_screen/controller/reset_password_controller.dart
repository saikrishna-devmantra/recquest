import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/reset_password_screen/models/reset_password_model.dart';
import 'package:flutter/material.dart';

class ResetPasswordController extends GetxController {
  TextEditingController newPassword = TextEditingController();

  TextEditingController confirmNewPassword = TextEditingController();

  Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    newPassword.dispose();
    confirmNewPassword.dispose();
  }
}
