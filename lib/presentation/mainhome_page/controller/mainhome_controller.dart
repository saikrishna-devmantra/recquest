import 'dart:convert';

import 'package:recquest_21/api/api_handler.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/mainhome_page/models/mainhome_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/mainhome_item_model.dart';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MainhomeController extends GetxController {
  MainhomeController(this.mainhomeModelObj);

  Rx<MainhomeModel> mainhomeModelObj;

  MainhomeItemModel? itemModel;
  var isDataLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    getApi();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getApi() async {
    final prefs = await SharedPreferences.getInstance();
    APIHandler apiClient = APIHandler();

    try {
      isDataLoading(true);

      dynamic response =
          await apiClient.get('/getEvents', isAuthenticated: true);

      dynamic responseData = response.data;

      print(responseData);
      // http.Response response = await http.get(
      //     Uri.tryParse('http://rec.optymoney.com/api/auth/getEvents')!,
      //     headers: {'app-id': '6218809df11d1d412af5bac4'});
      // if (response.statusCode == 200) {
      //   ///data successfully

      //   var result = jsonDecode(response.body);

      //   itemModel = MainhomeItemModel.fromJson(result);
      // } else {
      //   ///error
      // }
    } catch (e) {
      log('Error while getting data is $e');
      print('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }
}
