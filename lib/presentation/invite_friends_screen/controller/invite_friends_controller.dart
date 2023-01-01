import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/invite_friends_screen/models/invite_friends_model.dart';
import 'package:flutter/material.dart';

class InviteFriendsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<InviteFriendsModel> inviteFriendsModelObj = InviteFriendsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
