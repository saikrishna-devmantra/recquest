import '../events_screen/widgets/events_item_widget.dart';
import 'controller/events_controller.dart';
import 'models/events_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

class EventsScreen extends GetWidget<EventsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller
                              .eventsModelObj.value.eventsItemList.length,
                          itemBuilder: (context, index) {
                            EventsItemModel model = controller
                                .eventsModelObj.value.eventsItemList[index];
                            return EventsItemWidget(model);
                          })),
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 151, top: 4, right: 151, bottom: 4),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(72.00),
                                    margin: getMargin(top: 4),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray9007f,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1.00))))
                              ]))
                    ]))));
  }

  onTapImgOvalCopyFive() {
    Get.toNamed(AppRoutes.myProfileScreen);
  }

  onTapOvalCopyFive1() {
    Get.toNamed(AppRoutes.myProfileScreen);
  }

  onTapFloatingicon1() {
    Get.toNamed(AppRoutes.notificationsListScreen);
  }

  onTapContrast1() {
    Get.toNamed(AppRoutes.searchEventsScreen);
  }
}
