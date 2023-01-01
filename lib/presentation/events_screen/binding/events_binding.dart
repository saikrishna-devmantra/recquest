import '../controller/events_controller.dart';
import 'package:get/get.dart';

class EventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventsController());
  }
}
