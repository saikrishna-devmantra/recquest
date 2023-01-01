import 'package:get/get.dart';
import 'listcalendar1_item_model.dart';
import 'staggeredrectangle_item_model.dart';

class EventDetailsImagesModel {
  RxList<Listcalendar1ItemModel> listcalendar1ItemList =
      RxList.filled(2, Listcalendar1ItemModel());

  RxList<StaggeredrectangleItemModel> staggeredrectangleItemList =
      RxList.filled(4, StaggeredrectangleItemModel());
}
