import '../controller/photo_open_overlay_controller.dart';
import 'package:get/get.dart';

class PhotoOpenOverlayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhotoOpenOverlayController());
  }
}
