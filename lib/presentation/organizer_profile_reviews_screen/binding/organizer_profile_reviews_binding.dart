import '../controller/organizer_profile_reviews_controller.dart';
import 'package:get/get.dart';

class OrganizerProfileReviewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrganizerProfileReviewsController());
  }
}
