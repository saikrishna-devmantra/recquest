import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/my_profile_screen/models/my_profile_model.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

class MyProfileController extends GetxController {
  Rx<MyProfileModel> myProfileModelObj = MyProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
