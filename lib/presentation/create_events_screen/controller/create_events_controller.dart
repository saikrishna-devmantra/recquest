import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/create_events_screen/models/create_events_model.dart';
// import 'package:recquest_21/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class CreateEventsController extends GetxController {
  TextEditingController groupFiftyThreeController = TextEditingController();

  TextEditingController groupFiftyFourController = TextEditingController();

  TextEditingController groupFiftyFiveController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  Rx<CreateEventsModel> createEventsModelObj = CreateEventsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyThreeController.dispose();
    groupFiftyFourController.dispose();
    groupFiftyFiveController.dispose();
    inputController.dispose();
  }
}
