import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/search_events_screen/models/search_events_model.dart';

class SearchEventsController extends GetxController {
  Rx<SearchEventsModel> searchEventsModelObj = SearchEventsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
