import '../controller/notifications_list_controller.dart';
import 'package:get/get.dart';

class NotificationsListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsListController());
  }
}
