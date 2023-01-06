import '../event_details_images_screen/widgets/listcalendar1_item_widget.dart';
import '../event_details_images_screen/widgets/staggeredrectangle_item_widget.dart';
import 'controller/event_details_images_controller.dart';
import 'models/listcalendar1_item_model.dart';
import 'models/staggeredrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/mainhome_page/mainhome_page.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';
import 'package:recquest_21/widgets/custom_button.dart';

class EventDetailsImagesScreen extends GetWidget<EventDetailsImagesController> {
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
                                  width: size.width,
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(210.00),
                                            width: size.width,
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage77210x375,
                                                      height: getVerticalSize(
                                                          210.00),
                                                      width: getHorizontalSize(
                                                          375.00),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          width: size.width,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle419247x375,
                                                                    height:
                                                                        getVerticalSize(
                                                                            47.00),
                                                                    width: getHorizontalSize(
                                                                        375.00)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            24,
                                                                        top: 98,
                                                                        right:
                                                                            24),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgImage70,
                                                                              height: getSize(44.00),
                                                                              width: getSize(44.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(12.00))),
                                                                          GestureDetector(
                                                                              onTap: () {
                                                                                onTapColumnname();
                                                                              },
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 13, top: 5, bottom: 3),
                                                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Text("lbl_ashfak_sayem".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAsapRomanBold15WhiteA700.copyWith(height: 1.20)),
                                                                                    Padding(padding: getPadding(top: 2), child: Text("lbl_123k_friends".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAsapRomanMedium12))
                                                                                  ]))),
                                                                          Spacer(),
                                                                          // CustomButton(
                                                                          //     height: 28,
                                                                          //     width: 69,
                                                                          //     text: "lbl_follow".tr,
                                                                          //     margin: getMargin(top: 8, bottom: 8),
                                                                          //     variant: ButtonVariant.OutlineCyan30014,
                                                                          //     fontStyle: ButtonFontStyle.MontserratRomanSemiBold12)
                                                                        ]))
                                                              ])))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 17, top: 8, right: 26),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    222.00),
                                                            child: Text(
                                                                "msg_international_band2"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtAsapRomanMedium20)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 15,
                                                                right: 33),
                                                            child: Obx(() => ListView
                                                                .builder(
                                                                    physics:
                                                                        NeverScrollableScrollPhysics(),
                                                                    shrinkWrap:
                                                                        true,
                                                                    itemCount: controller
                                                                        .eventDetailsImagesModelObj
                                                                        .value
                                                                        .listcalendar1ItemList
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      Listcalendar1ItemModel
                                                                          model =
                                                                          controller
                                                                              .eventDetailsImagesModelObj
                                                                              .value
                                                                              .listcalendar1ItemList[index];
                                                                      return Listcalendar1ItemWidget(
                                                                          model);
                                                                    }))),
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapVisitors();
                                                            },
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            16),
                                                                child: Row(
                                                                    children: [
                                                                      Container(
                                                                          height: getVerticalSize(
                                                                              34.00),
                                                                          width: getHorizontalSize(
                                                                              79.00),
                                                                          child: Stack(
                                                                              alignment: Alignment.center,
                                                                              children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgOval, height: getSize(34.00), width: getSize(34.00), radius: BorderRadius.circular(getHorizontalSize(17.00)), alignment: Alignment.centerRight),
                                                                                CustomImageView(imagePath: ImageConstant.imgOvalcopy, height: getSize(34.00), width: getSize(34.00), radius: BorderRadius.circular(getHorizontalSize(17.00)), alignment: Alignment.center),
                                                                                CustomImageView(imagePath: ImageConstant.imgOvalcopy5, height: getSize(34.00), width: getSize(34.00), radius: BorderRadius.circular(getHorizontalSize(17.00)), alignment: Alignment.centerLeft)
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  9,
                                                                              top:
                                                                                  9,
                                                                              bottom:
                                                                                  6),
                                                                          child: Text(
                                                                              "lbl_20_going".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtAsapRomanMedium15))
                                                                    ])))
                                                      ]),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 6, bottom: 133),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomButton(
                                                                height: 28,
                                                                width: 67,
                                                                text:
                                                                    "lbl_invite"
                                                                        .tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineCyan30014_1,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .AsapRomanBold12,
                                                                onTap:
                                                                    onTapInvite),
                                                            // CustomButton(
                                                            //     height: 28,
                                                            //     width: 67,
                                                            //     text:
                                                            //         "lbl_share"
                                                            //             .tr,
                                                            //     margin:
                                                            //         getMargin(
                                                            //             top: 4),
                                                            //     variant:
                                                            //         ButtonVariant
                                                            //             .OutlineCyan30014_1,
                                                            //     fontStyle:
                                                            //         ButtonFontStyle
                                                            //             .AsapRomanBold12,
                                                            //     onTap:
                                                            //         onTapShare)
                                                          ]))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 15, top: 19),
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
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL4),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("lbl_about".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtAsapRomanBold14Pink800cc)
                                                          ])),
                                                  CustomButton(
                                                      height: 31,
                                                      width: 65,
                                                      text: "lbl_images".tr,
                                                      margin: getMargin(
                                                          left: 4, bottom: 5),
                                                      variant: ButtonVariant
                                                          .OutlineGray300,
                                                      shape: ButtonShape
                                                          .CustomBorderTL4,
                                                      fontStyle: ButtonFontStyle
                                                          .AsapRomanRegular14),
                                                  CustomButton(
                                                      height: 31,
                                                      width: 71,
                                                      text: "lbl_reviews".tr,
                                                      margin: getMargin(
                                                          left: 4, bottom: 5),
                                                      variant: ButtonVariant
                                                          .OutlineGray300,
                                                      shape: ButtonShape
                                                          .CustomBorderTL4,
                                                      fontStyle: ButtonFontStyle
                                                          .AsapRomanRegular14Black900)
                                                ]))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(344.00),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.pink80001)),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle8,
                                                      height: getVerticalSize(
                                                          114.00),
                                                      width: getHorizontalSize(
                                                          200.00),
                                                      onTap: () {
                                                        onTapImgRectangleEight();
                                                      }),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle6,
                                                      height: getVerticalSize(
                                                          114.00),
                                                      width: getHorizontalSize(
                                                          138.00),
                                                      margin:
                                                          getMargin(left: 11),
                                                      onTap: () {
                                                        onTapImgRectangleSix();
                                                      })
                                                ])),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle9,
                                            height: getVerticalSize(171.00),
                                            width: getHorizontalSize(350.00),
                                            margin: getMargin(top: 10),
                                            onTap: () {
                                              onTapImgRectangleNine();
                                            }),
                                        Padding(
                                            padding: getPadding(top: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle7,
                                                      height: getVerticalSize(
                                                          144.00),
                                                      width: getHorizontalSize(
                                                          138.00),
                                                      onTap: () {
                                                        onTapImgRectangleSeven();
                                                      }),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle5,
                                                      height: getVerticalSize(
                                                          144.00),
                                                      width: getHorizontalSize(
                                                          200.00),
                                                      margin:
                                                          getMargin(left: 11),
                                                      onTap: () {
                                                        onTapImgRectangleFive();
                                                      })
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 10),
                                            child: Obx(() =>
                                                StaggeredGridView.countBuilder(
                                                    shrinkWrap: true,
                                                    primary: false,
                                                    crossAxisCount: 4,
                                                    crossAxisSpacing:
                                                        getHorizontalSize(
                                                            11.78),
                                                    mainAxisSpacing:
                                                        getHorizontalSize(
                                                            11.78),
                                                    staggeredTileBuilder:
                                                        (index) {
                                                      return StaggeredTile.fit(
                                                          2);
                                                    },
                                                    itemCount: controller
                                                        .eventDetailsImagesModelObj
                                                        .value
                                                        .staggeredrectangleItemList
                                                        .length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      StaggeredrectangleItemModel
                                                          model = controller
                                                              .eventDetailsImagesModelObj
                                                              .value
                                                              .staggeredrectangleItemList[index];
                                                      return StaggeredrectangleItemWidget(
                                                          model,
                                                          onTapImgRectangle:
                                                              onTapImgRectangle);
                                                    })))
                                      ])),
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

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Explore:
        return AppRoutes.mainhomePage;
      case BottomBarEnum.Events:
        return "/";
      case BottomBarEnum.Map:
        return "/";
      case BottomBarEnum.Pictures:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainhomePage:
        return MainhomePage();
      default:
        return DefaultWidget();
    }
  }

  onTapImgRectangle() {
    Get.toNamed(AppRoutes.photoOpenOverlayScreen);
  }

  onTapColumnname() {
    Get.toNamed(AppRoutes.organizerProfileAboutScreen);
  }

  onTapVisitors() {
    Get.toNamed(AppRoutes.followingScreen);
  }

  onTapInvite() {
    Get.toNamed(AppRoutes.inviteFriendsScreen);
  }

  onTapShare() {
    Get.toNamed(AppRoutes.shareScreen);
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
}
