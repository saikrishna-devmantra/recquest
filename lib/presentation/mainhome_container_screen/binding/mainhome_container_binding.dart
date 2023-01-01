import '../controller/mainhome_container_controller.dart';
import 'package:get/get.dart';

class MainhomeContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainhomeContainerController());
  }
}
