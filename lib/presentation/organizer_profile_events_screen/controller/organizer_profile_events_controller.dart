import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/organizer_profile_events_screen/models/organizer_profile_events_model.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

class OrganizerProfileEventsController extends GetxController {
  Rx<OrganizerProfileEventsModel> organizerProfileEventsModelObj =
      OrganizerProfileEventsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
