import '../controller/organizer_profile_events_controller.dart';
import 'package:get/get.dart';

class OrganizerProfileEventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrganizerProfileEventsController());
  }
}
