import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/search_events_screen/models/search_events_model.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

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
