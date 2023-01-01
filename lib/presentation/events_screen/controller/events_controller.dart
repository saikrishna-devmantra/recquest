import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/events_screen/models/events_model.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

class EventsController extends GetxController {
  Rx<EventsModel> eventsModelObj = EventsModel().obs;

  @override
  void onReady() {
    super.onReady();
    Get.toNamed(AppRoutes.mapViewScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
