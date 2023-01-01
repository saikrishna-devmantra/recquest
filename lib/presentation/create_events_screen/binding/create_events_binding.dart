import '../controller/create_events_controller.dart';
import 'package:get/get.dart';

class CreateEventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateEventsController());
  }
}
