import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/notifications_list_screen/models/notifications_list_model.dart';

class NotificationsListController extends GetxController {
  Rx<NotificationsListModel> notificationsListModelObj =
      NotificationsListModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
