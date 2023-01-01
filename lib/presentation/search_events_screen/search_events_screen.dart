import 'package:recquest_21/presentation/events_screen/events_screen.dart';
import 'package:recquest_21/presentation/map_view_screen/map_view_screen.dart';
import 'package:recquest_21/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:recquest_21/presentation/pictures_screen/pictures_screen.dart';

import '../search_events_screen/widgets/search_events_item_widget.dart';
import 'controller/search_events_controller.dart';
import 'models/search_events_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/mainhome_page/mainhome_page.dart';
import 'package:recquest_21/widgets/app_bar/appbar_button.dart';
import 'package:recquest_21/widgets/app_bar/appbar_circleimage.dart';
import 'package:recquest_21/widgets/app_bar/appbar_image.dart';
import 'package:recquest_21/widgets/app_bar/appbar_subtitle.dart';
import 'package:recquest_21/widgets/app_bar/custom_app_bar.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

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
                                      itemCount: controller.searchEventsModelObj
                                          .value.searchEventsItemList.length,
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
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
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

  onTapOvalCopyFive2() {
    Get.toNamed(AppRoutes.myProfileScreen);
  }

  onTapFilters() {
    Get.toNamed(AppRoutes.filtersScreen);
  }
}
