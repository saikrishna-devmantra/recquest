import '../controller/event_details_reviews_controller.dart';
import 'package:get/get.dart';

class EventDetailsReviewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventDetailsReviewsController());
  }
}
