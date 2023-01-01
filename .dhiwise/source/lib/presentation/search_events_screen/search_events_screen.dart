import '../search_events_screen/widgets/search_events_item_widget.dart';
import 'controller/search_events_controller.dart';
import 'models/search_events_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/app_bar/appbar_button.dart';
import 'package:recquest_21/widgets/app_bar/appbar_circleimage.dart';
import 'package:recquest_21/widgets/app_bar/appbar_image.dart';
import 'package:recquest_21/widgets/app_bar/appbar_subtitle.dart';
import 'package:recquest_21/widgets/app_bar/custom_app_bar.dart';

class SearchEventsScreen extends GetWidget<SearchEventsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
                leadingWidth: 59,
                leading: AppbarCircleimage(
                    imagePath: ImageConstant.imgOvalcopy5,
                    margin: getMargin(left: 19, top: 10, bottom: 10),
                    onTap: onTapOvalCopyFive2),
                title: Row(children: [
                  AppbarImage(
                      height: getVerticalSize(24.00),
                      width: getHorizontalSize(23.00),
                      svgPath: ImageConstant.imgContrast24x26,
                      margin: getMargin(left: 10, top: 19, bottom: 16)),
                  Container(
                      height: getVerticalSize(26.00),
                      width: getHorizontalSize(1.00),
                      margin: getMargin(left: 9, top: 17, bottom: 16),
                      decoration:
                          BoxDecoration(color: ColorConstant.indigo300)),
                  AppbarSubtitle(
                      text: "lbl_search".tr,
                      margin: getMargin(left: 10, top: 15, bottom: 16))
                ]),
                actions: [
                  AppbarButton(
                      margin:
                          getMargin(left: 19, top: 14, right: 19, bottom: 14),
                      onTap: onTapFilters)
                ],
                styleType: Style.bgFillBluegray90002),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 12, top: 12, right: 13),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.searchEventsModelObj.value
                                  .searchEventsItemList.length,
                              itemBuilder: (context, index) {
                                SearchEventsItemModel model = controller
                                    .searchEventsModelObj
                                    .value
                                    .searchEventsItemList[index];
                                return SearchEventsItemWidget(model,
                                    onTapEvent: onTapEvent);
                              }))),
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

  onTapEvent() {
    Get.toNamed(AppRoutes.eventDetailsAboutScreen);
  }

  onTapOvalCopyFive2() {
    Get.toNamed(AppRoutes.myProfileScreen);
  }

  onTapFilters() {
    Get.toNamed(AppRoutes.filtersScreen);
  }
}
