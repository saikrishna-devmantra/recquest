import 'package:recquest_21/presentation/map_view_screen/map_view_screen.dart';
import 'package:recquest_21/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:recquest_21/presentation/pictures_screen/pictures_screen.dart';

import '../events_screen/widgets/events_item_widget.dart';
import 'controller/events_controller.dart';
import 'models/events_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/mainhome_page/mainhome_page.dart';
import 'package:recquest_21/widgets/app_bar/appbar_circleimage.dart';
import 'package:recquest_21/widgets/app_bar/appbar_image.dart';
import 'package:recquest_21/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:recquest_21/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:recquest_21/widgets/app_bar/custom_app_bar.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

class EventsScreen extends GetWidget<EventsController> {
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
                onTap: onTapOvalCopyFive1),
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
                  onTap: onTapFloatingicon1)
            ]),
            actions: [
              AppbarImage(
                  height: getVerticalSize(24.00),
                  width: getHorizontalSize(26.00),
                  svgPath: ImageConstant.imgContrast24x26,
                  margin: getMargin(left: 12, top: 18, right: 12, bottom: 18),
                  onTap: onTapContrast1)
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
                            child: Obx(
                              () => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.eventsModelObj.value
                                      .eventsItemList.length,
                                  itemBuilder: (context, index) {
                                    EventsItemModel model = controller
                                        .eventsModelObj
                                        .value
                                        .eventsItemList[index];
                                    return EventsItemWidget(model,
                                        onTapEvent: onTapEvent);
                                  }),
                            ),
                          ),
                          Container(
                              width: size.width,
                              margin: getMargin(top: 60),
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
                        ])))),
        // bottomNavigationBar: CustomBottomBar(
        //   onChanged: (BottomBarEnum type) {
        //     Get.toNamed(getCurrentRoute(type), id: 1);
        //   },
        // ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Explore:
        return AppRoutes.mainhomePage;
      case BottomBarEnum.Events:
        return AppRoutes.eventsScreen;
      case BottomBarEnum.Map:
        return AppRoutes.mapViewScreen;
      case BottomBarEnum.Pictures:
        return AppRoutes.picturesScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.myProfileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainhomePage:
        return MainhomePage();
      case AppRoutes.eventsScreen:
        return EventsScreen();
      case AppRoutes.mapViewScreen:
        return MapViewScreen();
      case AppRoutes.picturesScreen:
        return PicturesScreen();
      case AppRoutes.myProfileScreen:
        return MyProfileScreen();
      default:
        return DefaultWidget();
    }
  }

  onTapEvent() {
    Get.toNamed(AppRoutes.eventDetailsAboutScreen);
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
