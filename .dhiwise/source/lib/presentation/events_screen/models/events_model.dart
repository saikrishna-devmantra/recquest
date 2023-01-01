import 'package:get/get.dart';
import 'events_item_model.dart';

class EventsModel {
  RxList<EventsItemModel> eventsItemList = RxList.filled(8, EventsItemModel());
}
