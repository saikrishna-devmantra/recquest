import '../controller/organizer_profile_images_controller.dart';
import 'package:get/get.dart';

class OrganizerProfileImagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrganizerProfileImagesController());
  }
}
