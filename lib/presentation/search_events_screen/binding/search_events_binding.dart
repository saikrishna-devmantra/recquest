import '../controller/search_events_controller.dart';
import 'package:get/get.dart';

class SearchEventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchEventsController());
  }
}
