import 'package:get/get.dart';
import 'pictures_item_model.dart';

class PicturesModel {
  RxList<PicturesItemModel> picturesItemList =
      RxList.filled(4, PicturesItemModel());
}
