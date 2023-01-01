import 'package:get/get.dart';
import 'listellipsefiftyeight_one_item_model.dart';
import 'listellipsefiftyeight_three_item_model.dart';

class NotificationsListModel {
  RxList<ListellipsefiftyeightOneItemModel> listellipsefiftyeightOneItemList =
      RxList.filled(2, ListellipsefiftyeightOneItemModel());

  RxList<ListellipsefiftyeightThreeItemModel>
      listellipsefiftyeightThreeItemList =
      RxList.filled(3, ListellipsefiftyeightThreeItemModel());
}
