import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/map_view_screen/models/map_view_model.dart';

class MapViewController extends GetxController {
  Rx<MapViewModel> mapViewModelObj = MapViewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
