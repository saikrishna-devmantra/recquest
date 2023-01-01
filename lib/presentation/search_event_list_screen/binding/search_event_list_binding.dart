import '../controller/search_event_list_controller.dart';
import 'package:get/get.dart';

class SearchEventListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchEventListController());
  }
}
