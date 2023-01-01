import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/map_view_screen/models/map_view_model.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

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
