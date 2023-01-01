import '../controller/organizer_profile_about_controller.dart';
import 'package:get/get.dart';

class OrganizerProfileAboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrganizerProfileAboutController());
  }
}
