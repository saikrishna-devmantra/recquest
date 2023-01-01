import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/event_details_reviews_screen/models/event_details_reviews_model.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

class EventDetailsReviewsController extends GetxController {
  Rx<EventDetailsReviewsModel> eventDetailsReviewsModelObj =
      EventDetailsReviewsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
