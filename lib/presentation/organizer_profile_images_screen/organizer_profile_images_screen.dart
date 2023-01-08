import 'package:recquest_21/presentation/events_screen/events_screen.dart';
import 'package:recquest_21/presentation/map_view_screen/map_view_screen.dart';
import 'package:recquest_21/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:recquest_21/presentation/pictures_screen/pictures_screen.dart';

import '../organizer_profile_images_screen/widgets/staggeredrectangle_one_item_widget.dart';
import 'controller/organizer_profile_images_controller.dart';
import 'models/staggeredrectangle_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/mainhome_page/mainhome_page.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';
import 'package:recquest_21/widgets/custom_button.dart';
import 'package:recquest_21/presentation/messages_dialog/messages_dialog.dart';
import 'package:recquest_21/presentation/messages_dialog/controller/messages_controller.dart';

class OrganizerProfileImagesScreen
    extends GetWidget<OrganizerProfileImagesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10001,
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
                child: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(19.00),
                              width: size.width,
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700)),
                          Container(
                              width: size.width,
                              padding: getPadding(
                                  left: 45, top: 21, right: 45, bottom: 21),
                              decoration: AppDecoration.outlineBlack9003f,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage89,
                                        height: getSize(108.00),
                                        width: getSize(108.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(54.00)),
                                        margin: getMargin(top: 45)),
                                    Container(
                                        height: getVerticalSize(52.00),
                                        width: getHorizontalSize(161.00),
                                        margin: getMargin(top: 11),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Text(
                                                      "lbl_david_william".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanBold20)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          155.00),
                                                      child: Text(
                                                          "msg_lifestyle_uiux"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtMontserratRomanRegular10)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 3, top: 5, right: 4),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapPosts();
                                                  },
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          39.00),
                                                      width: getHorizontalSize(
                                                          30.00),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Text(
                                                                    "lbl_33".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRomanSemiBold24)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Text(
                                                                    "lbl_posts"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRomanSemiBold10))
                                                          ]))),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapFollowers();
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 75),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("lbl_743".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanSemiBold24),
                                                            Text(
                                                                "lbl_followers"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanSemiBold10)
                                                          ]))),
                                              Spacer(),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapFollowers1();
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("lbl_1_043".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanSemiBold24),
                                                            Text(
                                                                "lbl_following"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanSemiBold10)
                                                          ])))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              // CustomButton(
                                              //     height: 43,
                                              //     width: 134,
                                              //     text: "lbl_follow".tr,
                                              //     variant: ButtonVariant
                                              //         .OutlineWhiteA700,
                                              //     shape: ButtonShape
                                              //         .RoundedBorder10,
                                              //     padding: ButtonPadding
                                              //         .PaddingT11,
                                              //     fontStyle: ButtonFontStyle
                                              //         .AsapItalicBold16WhiteA700,
                                              //     prefixWidget: Container(
                                              //         margin: getMargin(
                                              //             right: 9),
                                              //         child: CustomImageView(
                                              //             svgPath: ImageConstant
                                              //                 .imgGroup18531))),
                                              CustomButton(
                                                  height: 43,
                                                  width: 134,
                                                  text: "lbl_massages".tr,
                                                  variant: ButtonVariant
                                                      .OutlinePink80001,
                                                  shape: ButtonShape
                                                      .RoundedBorder10,
                                                  padding:
                                                      ButtonPadding.PaddingT11,
                                                  fontStyle: ButtonFontStyle
                                                      .AsapItalicBold16Pink80001,
                                                  prefixWidget: Container(
                                                      margin:
                                                          getMargin(right: 9),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgLightbulb19x19)),
                                                  onTap: onTapMassages)
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 12, top: 16),
                                  child: Row(children: [
                                    Container(
                                        padding: getPadding(
                                            left: 10,
                                            top: 9,
                                            right: 10,
                                            bottom: 9),
                                        decoration: AppDecoration
                                            .outlinePink80001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL4),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_about".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtAsapRomanBold14Pink800cc)
                                            ])),
                                    Container(
                                        width: getHorizontalSize(65.00),
                                        margin: getMargin(left: 4, bottom: 5),
                                        padding: getPadding(
                                            left: 10,
                                            top: 4,
                                            right: 10,
                                            bottom: 4),
                                        decoration: AppDecoration
                                            .txtOutlineGray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCustomBorderTL4),
                                        child: Text("lbl_images".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAsapRomanRegular14Black900cc)),
                                    Container(
                                        width: getHorizontalSize(61.00),
                                        margin: getMargin(left: 4, bottom: 5),
                                        padding: getPadding(
                                            left: 10,
                                            top: 6,
                                            right: 10,
                                            bottom: 6),
                                        decoration: AppDecoration
                                            .txtOutlineGray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCustomBorderTL4),
                                        child: Text("lbl_events".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAsapRomanRegular14Black900cc)),
                                    Container(
                                        width: getHorizontalSize(71.00),
                                        margin: getMargin(left: 4, bottom: 5),
                                        padding: getPadding(
                                            left: 10,
                                            top: 6,
                                            right: 10,
                                            bottom: 6),
                                        decoration: AppDecoration
                                            .txtOutlineGray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCustomBorderTL4),
                                        child: Text("lbl_reviews".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtAsapRomanRegular14))
                                  ]))),
                          Container(
                              height: getVerticalSize(1.00),
                              width: getHorizontalSize(363.00),
                              decoration: BoxDecoration(
                                  color: ColorConstant.pink80001)),
                          Padding(
                              padding: getPadding(top: 9),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle8,
                                        height: getVerticalSize(123.00),
                                        width: getHorizontalSize(200.00)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle6,
                                        height: getVerticalSize(123.00),
                                        width: getHorizontalSize(138.00),
                                        margin: getMargin(left: 11))
                                  ])),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle9,
                              height: getVerticalSize(184.00),
                              width: getHorizontalSize(350.00),
                              margin: getMargin(top: 11)),
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
                                  ])),
                          Padding(
                              padding: getPadding(top: 3),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle7,
                                        height: getVerticalSize(155.00),
                                        width: getHorizontalSize(138.00)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle5,
                                        height: getVerticalSize(155.00),
                                        width: getHorizontalSize(200.00),
                                        margin: getMargin(left: 11))
                                  ])),
                          Padding(
                              padding: getPadding(top: 11),
                              child: Obx(() => StaggeredGridView.countBuilder(
                                  shrinkWrap: true,
                                  primary: false,
                                  crossAxisCount: 4,
                                  crossAxisSpacing: getHorizontalSize(11.78),
                                  mainAxisSpacing: getHorizontalSize(11.78),
                                  staggeredTileBuilder: (index) {
                                    return StaggeredTile.fit(2);
                                  },
                                  itemCount: controller
                                      .organizerProfileImagesModelObj
                                      .value
                                      .staggeredrectangleOneItemList
                                      .length,
                                  itemBuilder: (context, index) {
                                    StaggeredrectangleOneItemModel model =
                                        controller
                                                .organizerProfileImagesModelObj
                                                .value
                                                .staggeredrectangleOneItemList[
                                            index];
                                    return StaggeredrectangleOneItemWidget(
                                        model);
                                  })))
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

  onTapPosts() {
    Get.defaultDialog(
      title: '',
      backgroundColor: Colors.transparent,
      content: MessagesDialog(
        Get.put(
          MessagesController(),
        ),
      ),
    );
  }

  onTapFollowers() {
    Get.toNamed(AppRoutes.followersScreen);
  }

  onTapFollowers1() {
    Get.toNamed(AppRoutes.followingScreen);
  }

  onTapMassages() {
    Get.defaultDialog(
      title: '',
      backgroundColor: Colors.transparent,
      content: MessagesDialog(
        Get.put(
          MessagesController(),
        ),
      ),
    );
  }
}
