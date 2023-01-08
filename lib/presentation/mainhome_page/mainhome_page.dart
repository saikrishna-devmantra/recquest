import '../mainhome_page/widgets/mainhome_item_widget.dart';
import 'controller/mainhome_controller.dart';
import 'models/mainhome_item_model.dart';
import 'models/mainhome_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/app_bar/appbar_circleimage.dart';
import 'package:recquest_21/widgets/app_bar/appbar_image.dart';
import 'package:recquest_21/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:recquest_21/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:recquest_21/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MainhomePage extends StatelessWidget {
  MainhomeController controller =
      Get.put(MainhomeController(MainhomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
                leadingWidth: 51,
                leading: AppbarCircleimage(
                    imagePath: ImageConstant.imgOvalcopy5,
                    margin: getMargin(left: 11, top: 10, bottom: 10),
                    onTap: onTaponTapUserProfile),
                title: Row(children: [
                  Padding(
                      padding: getPadding(left: 59, top: 12, bottom: 15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppbarSubtitle3(
                                text: "msg_current_location".tr,
                                margin: getMargin(right: 1)),
                            AppbarSubtitle2(text: "lbl_new_yourk_usa".tr)
                          ])),
                  AppbarImage(
                      height: getSize(40.00),
                      width: getSize(40.00),
                      svgPath: ImageConstant.imgFloatingicon,
                      margin: getMargin(left: 58, top: 10, bottom: 10),
                      onTap: onTapFloatingicon)
                ]),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(24.00),
                      width: getHorizontalSize(26.00),
                      svgPath: ImageConstant.imgContrast24x26,
                      margin:
                          getMargin(left: 12, top: 18, right: 12, bottom: 18),
                      onTap: onTapContrast)
                ],
                styleType: Style.bgFillBluegray90002),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 12),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 12, right: 13),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.mainhomeModelObj
                                          .value.mainhomeItemList.length,
                                      itemBuilder: (context, index) {
                                        MainhomeItemModel model = controller
                                            .mainhomeModelObj
                                            .value
                                            .mainhomeItemList[index];
                                        return MainhomeItemWidget(model,
                                            onTapNameLocation:
                                                onTapNameLocation,
                                            onTapDetails: onTapDetails);
                                      }))),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 60),
                                  padding: getPadding(
                                      left: 151, top: 4, right: 151, bottom: 4),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: getVerticalSize(2.00),
                                            width: getHorizontalSize(72.00),
                                            margin: getMargin(top: 4),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray9007f,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00))))
                                      ]))
                            ]))))));
  }

  onTapNameLocation() {
    Get.toNamed(AppRoutes.organizerProfileAboutScreen);
  }

  onTapDetails() {
    Get.toNamed(AppRoutes.eventDetailsAboutScreen);
  }

  onTaponTapUserProfile() {
    Get.toNamed(AppRoutes.myProfileScreen);
  }

  onTapFloatingicon() {
    Get.toNamed(AppRoutes.notificationsListScreen);
  }

  onTapContrast() {
    Get.toNamed(AppRoutes.searchEventsScreen);
  }
}
