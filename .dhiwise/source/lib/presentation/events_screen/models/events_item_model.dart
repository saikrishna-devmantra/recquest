import 'package:get/get.dart';
import 'events_screen_item_model.dart';

class EventsItemModel {
  RxList<EventsScreenItemModel> eventsScreenItemList =
      RxList.filled(5, EventsScreenItemModel());
}
