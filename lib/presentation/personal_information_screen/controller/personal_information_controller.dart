import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/personal_information_screen/models/personal_information_model.dart';
import 'package:flutter/material.dart';

class PersonalInformationController extends GetxController {
  TextEditingController groupFiftyThreeController = TextEditingController();

  TextEditingController groupFiftySevenController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController groupFiftyFiveController = TextEditingController();

  TextEditingController groupFiftySixController = TextEditingController();

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
    groupFiftyThreeController.dispose();
    groupFiftySevenController.dispose();
    emailController.dispose();
    groupFiftyFiveController.dispose();
    groupFiftySixController.dispose();
    inputController.dispose();
  }
}
