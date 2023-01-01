import 'package:get/get.dart';
import 'map_view_item_model.dart';

class MapViewModel {
  RxList<MapViewItemModel> mapViewItemList =
      RxList.filled(3, MapViewItemModel());
}
