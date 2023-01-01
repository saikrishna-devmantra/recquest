import '../controller/notifications_empty_controller.dart';
import 'package:get/get.dart';

class NotificationsEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsEmptyController());
  }
}
