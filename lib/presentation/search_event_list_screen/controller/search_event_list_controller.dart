import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/search_event_list_screen/models/search_event_list_model.dart';
import 'package:flutter/material.dart';

class SearchEventListController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchEventListModel> searchEventListModelObj = SearchEventListModel().obs;

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
