import '../controller/followers_controller.dart';
import 'package:get/get.dart';

class FollowersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowersController());
  }
}
