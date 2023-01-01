import '../controller/event_details_images_controller.dart';
import 'package:get/get.dart';

class EventDetailsImagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventDetailsImagesController());
  }
}
