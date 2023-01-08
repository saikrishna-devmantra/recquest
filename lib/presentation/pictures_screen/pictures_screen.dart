import 'package:recquest_21/presentation/events_screen/events_screen.dart';
import 'package:recquest_21/presentation/map_view_screen/map_view_screen.dart';
import 'package:recquest_21/presentation/my_profile_screen/my_profile_screen.dart';

import '../pictures_screen/widgets/pictures_item_widget.dart';
import 'controller/pictures_controller.dart';
import 'models/pictures_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/mainhome_page/mainhome_page.dart';
import 'package:recquest_21/widgets/app_bar/appbar_button.dart';
import 'package:recquest_21/widgets/app_bar/appbar_circleimage.dart';
import 'package:recquest_21/widgets/app_bar/appbar_image.dart';
import 'package:recquest_21/widgets/app_bar/appbar_subtitle.dart';
import 'package:recquest_21/widgets/app_bar/custom_app_bar.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

class PicturesScreen extends GetWidget<PicturesController> {
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
                onTap: onTapOvalCopyFive3),
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
                  decoration: BoxDecoration(color: ColorConstant.indigo300)),
              AppbarSubtitle(
                  text: "lbl_search".tr,
                  margin: getMargin(left: 10, top: 15, bottom: 16))
            ]),
            actions: [
              AppbarButton(
                  margin: getMargin(left: 19, top: 14, right: 19, bottom: 14),
                  onTap: onTapFilters1)
            ],
            styleType: Style.bgFillBluegray90002),
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
                child: Container(
                    height: getVerticalSize(901.00),
                    width: size.width,
                    margin: getMargin(top: 10),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, right: 16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle8,
                                              height: getVerticalSize(140.00),
                                              width: getHorizontalSize(196.00),
                                              onTap: () {
                                                onTapImgRectangleEight();
                                              }),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle6,
                                              height: getVerticalSize(140.00),
                                              width: getHorizontalSize(135.00),
                                              onTap: () {
                                                onTapImgRectangleSix();
                                              })
                                        ]),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle9,
                                        height: getVerticalSize(210.00),
                                        width: getHorizontalSize(343.00),
                                        margin: getMargin(top: 13),
                                        onTap: () {
                                          onTapImgRectangleNine();
                                        }),
                                    Padding(
                                        padding: getPadding(top: 13),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle7,
                                                  height:
                                                      getVerticalSize(177.00),
                                                  width:
                                                      getHorizontalSize(135.00),
                                                  onTap: () {
                                                    onTapImgRectangleSeven();
                                                  }),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle5,
                                                  height:
                                                      getVerticalSize(177.00),
                                                  width:
                                                      getHorizontalSize(196.00),
                                                  onTap: () {
                                                    onTapImgRectangleFive();
                                                  })
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 13),
                                        child: Obx(() =>
                                            StaggeredGridView.countBuilder(
                                                shrinkWrap: true,
                                                primary: false,
                                                crossAxisCount: 4,
                                                crossAxisSpacing:
                                                    getHorizontalSize(11.54),
                                                mainAxisSpacing:
                                                    getHorizontalSize(11.54),
                                                staggeredTileBuilder: (index) {
                                                  return StaggeredTile.fit(2);
                                                },
                                                itemCount: controller
                                                    .picturesModelObj
                                                    .value
                                                    .picturesItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  PicturesItemModel model =
                                                      controller
                                                              .picturesModelObj
                                                              .value
                                                              .picturesItemList[
                                                          index];
                                                  return PicturesItemWidget(
                                                      model,
                                                      onTapImgRectangle:
                                                          onTapImgRectangle);
                                                })))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: size.width,
                              margin: getMargin(bottom: 159),
                              padding: getPadding(
                                  left: 151, top: 4, right: 151, bottom: 4),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
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
                                  ])))
                    ])))),
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

  onTapImgRectangle() {
    Get.toNamed(AppRoutes.photoOpenOverlayScreen);
  }

  onTapImgRectangleEight() {
    Get.toNamed(AppRoutes.photoOpenOverlayScreen);
  }

  onTapImgRectangleSix() {
    Get.toNamed(AppRoutes.photoOpenOverlayScreen);
  }

  onTapImgRectangleNine() {
    Get.toNamed(AppRoutes.photoOpenOverlayScreen);
  }

  onTapImgRectangleSeven() {
    Get.toNamed(AppRoutes.photoOpenOverlayScreen);
  }

  onTapImgRectangleFive() {
    Get.toNamed(AppRoutes.photoOpenOverlayScreen);
  }

  onTapOvalCopyFive3() {
    Get.toNamed(AppRoutes.myProfileScreen);
  }

  onTapFilters1() {
    Get.toNamed(AppRoutes.filtersScreen);
  }
}
