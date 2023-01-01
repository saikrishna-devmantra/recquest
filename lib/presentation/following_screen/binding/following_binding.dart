import '../controller/following_controller.dart';
import 'package:get/get.dart';

class FollowingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowingController());
  }
}
