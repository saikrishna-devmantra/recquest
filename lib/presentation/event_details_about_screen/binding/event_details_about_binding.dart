import '../controller/event_details_about_controller.dart';
import 'package:get/get.dart';

class EventDetailsAboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventDetailsAboutController());
  }
}
