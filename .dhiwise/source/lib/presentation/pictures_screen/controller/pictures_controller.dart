import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/pictures_screen/models/pictures_model.dart';

class PicturesController extends GetxController {
  Rx<PicturesModel> picturesModelObj = PicturesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
