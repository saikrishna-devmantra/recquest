import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/organizer_profile_images_screen/models/organizer_profile_images_model.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

class OrganizerProfileImagesController extends GetxController {
  Rx<OrganizerProfileImagesModel> organizerProfileImagesModelObj =
      OrganizerProfileImagesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
