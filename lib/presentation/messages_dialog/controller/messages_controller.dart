import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/messages_dialog/models/messages_model.dart';
import 'package:flutter/material.dart';

class MessagesController extends GetxController {
  TextEditingController inputController = TextEditingController();

  Rx<MessagesModel> messagesModelObj = MessagesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
  }
}
