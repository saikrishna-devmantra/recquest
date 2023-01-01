import 'package:get/get.dart';
import 'events_item_model.dart';

class EventsModel {
  RxList<EventsItemModel> eventsItemList = RxList.filled(7, EventsItemModel());
  contructor() {
    print(eventsItemList);
  }
}
