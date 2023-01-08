import 'package:basic_utils/basic_utils.dart';
import 'package:recquest_21/api/api_handler.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/my_profile_screen/models/my_profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer';

class MyProfileController extends GetxController {
  var username = "Username";
  Rx<MyProfileModel> myProfileModelObj = MyProfileModel().obs;

  var isDataLoading = false;

  @override
  Future<void> onInit() async {
    getUserProfile();
    // final prefs = await SharedPreferences.getInstance();
    // username = prefs.getString("fullName")!;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getUserProfile() async {
    APIHandler apiClient = APIHandler();

    try {
      dynamic response =
          await apiClient.get('/user-profile', isAuthenticated: true);

      dynamic responseData = response.data;
      // MyProfileModel userprofile = MyProfileModel.fromJson(response.data);
      username = StringUtils.capitalize(responseData['firstname']);
      print(username);
    } catch (e) {
      log('Error while getting data is $e');
      print('Error while getting data is $e');
    } finally {
      // isDataLoading;
    }
  }
}
