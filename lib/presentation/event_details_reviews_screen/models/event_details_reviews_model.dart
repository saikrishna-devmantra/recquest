import 'package:get/get.dart';
import 'listcalendar2_item_model.dart';
import 'listellipsefiftytwo_item_model.dart';

class EventDetailsReviewsModel {
  RxList<Listcalendar2ItemModel> listcalendar2ItemList =
      RxList.filled(2, Listcalendar2ItemModel());

  RxList<ListellipsefiftytwoItemModel> listellipsefiftytwoItemList =
      RxList.filled(3, ListellipsefiftytwoItemModel());
}
