import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/personal_information_screen/models/personal_information_model.dart';
import 'package:flutter/material.dart';

class PersonalInformationController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController emailTwoController = TextEditingController();

  TextEditingController emailThreeController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  Rx<PersonalInformationModel> personalInformationModelObj =
      PersonalInformationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    emailOneController.dispose();
    emailTwoController.dispose();
    emailThreeController.dispose();
    inputController.dispose();
  }
}
