import 'package:get/get.dart';
import 'search_events_item_model.dart';

class SearchEventsModel {
  RxList<SearchEventsItemModel> searchEventsItemList =
      RxList.filled(7, SearchEventsItemModel());
}
