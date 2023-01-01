import '../controller/pictures_controller.dart';
import 'package:get/get.dart';

class PicturesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PicturesController());
  }
}
