import '../controller/map_view_controller.dart';
import 'package:get/get.dart';

class MapViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapViewController());
  }
}
