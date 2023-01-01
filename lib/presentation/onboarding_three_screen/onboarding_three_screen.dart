import 'controller/onboarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:recquest_21/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            body: Container(
                width: size.width,
                padding: getPadding(left: 30, right: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtSkip();
                              },
                              child: Padding(
                                  padding: getPadding(top: 6, right: 13),
                                  child: Text("lbl_skip".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtAsapRomanSemiBold18
                                          .copyWith(height: 1.17))))),
                      Container(
                          height: getVerticalSize(317.00),
                          width: getHorizontalSize(315.00),
                          margin: getMargin(top: 28),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgBackground,
                                height: getVerticalSize(308.00),
                                width: getHorizontalSize(297.00),
                                alignment: Alignment.centerLeft,
                                margin: getMargin(left: 2)),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(311.00),
                                    width: getHorizontalSize(315.00),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgGroupGray600,
                                              height: getVerticalSize(158.00),
                                              width: getHorizontalSize(159.00),
                                              alignment: Alignment.topLeft,
                                              margin:
                                                  getMargin(left: 66, top: 69)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgGroupGray600167x167,
                                              height: getSize(167.00),
                                              width: getSize(167.00),
                                              alignment: Alignment.topLeft,
                                              margin:
                                                  getMargin(left: 52, top: 23)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgGroupGray600170x170,
                                              height: getSize(170.00),
                                              width: getSize(170.00),
                                              alignment: Alignment.topCenter,
                                              margin: getMargin(top: 25)),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(
                                                      left: 73, top: 42),
                                                  color: ColorConstant.gray200,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder7),
                                                  child: Container(
                                                      height: getSize(152.00),
                                                      width: getSize(152.00),
                                                      padding: getPadding(
                                                          left: 8, right: 8),
                                                      decoration: AppDecoration
                                                          .fillGray200
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder7),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Container(
                                                                    height: getVerticalSize(
                                                                        110.00),
                                                                    width: getHorizontalSize(
                                                                        130.00),
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                9),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA700))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        right:
                                                                            2),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .end,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Container(
                                                                              width: getHorizontalSize(12.00),
                                                                              child: Text("lbl_1425".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInterRegular73)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgSearch,
                                                                              height: getVerticalSize(9.00),
                                                                              width: getHorizontalSize(8.00),
                                                                              margin: getMargin(left: 3, bottom: 7)),
                                                                          Container(
                                                                              width: getHorizontalSize(9.00),
                                                                              margin: getMargin(left: 3),
                                                                              child: Text("lbl_456".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInterRegular73)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgBookmark,
                                                                              height: getVerticalSize(10.00),
                                                                              width: getHorizontalSize(6.00),
                                                                              margin: getMargin(left: 71, bottom: 7))
                                                                        ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        130.00),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            29),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray400))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        57.00),
                                                                    margin: getMargin(
                                                                        left: 2,
                                                                        bottom:
                                                                            25),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray400))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        81.00),
                                                                    margin: getMargin(
                                                                        left: 2,
                                                                        bottom:
                                                                            22),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray400))),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFavorite,
                                                                height:
                                                                    getVerticalSize(
                                                                        8.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12.00),
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left: 2,
                                                                        bottom:
                                                                            9)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFavorite8x12,
                                                                height:
                                                                    getVerticalSize(
                                                                        8.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12.00),
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left: 2,
                                                                        bottom:
                                                                            13)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFavorite8x12,
                                                                height:
                                                                    getVerticalSize(
                                                                        8.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12.00),
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left: 2,
                                                                        bottom:
                                                                            18)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector8x12,
                                                                height:
                                                                    getVerticalSize(
                                                                        8.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12.00),
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left: 2,
                                                                        bottom:
                                                                            23)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector8x12,
                                                                height:
                                                                    getVerticalSize(
                                                                        8.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12.00),
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left: 2,
                                                                        bottom:
                                                                            28)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector10x13,
                                                                height:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        13.00),
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            30))
                                                          ])))),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgGroupIndigo300,
                                              height: getVerticalSize(141.00),
                                              width: getHorizontalSize(127.00),
                                              alignment: Alignment.topLeft,
                                              margin:
                                                  getMargin(left: 60, top: 54)),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(19.00),
                                                  width:
                                                      getHorizontalSize(4.00),
                                                  margin: getMargin(
                                                      top: 57, right: 23),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        19.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        4.00),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .gray800))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        19.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        1.00),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .gray900))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        16.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        2.00),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .blue100)))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(50.00),
                                                  width:
                                                      getHorizontalSize(35.00),
                                                  margin: getMargin(
                                                      top: 107, right: 76),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgReply50x35,
                                                            height:
                                                                getVerticalSize(
                                                                    50.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    35.00),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgUser,
                                                            height:
                                                                getVerticalSize(
                                                                    21.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    24.00),
                                                            alignment: Alignment
                                                                .topRight)
                                                      ]))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFire13x13,
                                              height: getSize(13.00),
                                              width: getSize(13.00),
                                              alignment: Alignment.topRight,
                                              margin: getMargin(
                                                  top: 67, right: 14)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorGray90001,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(25.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(right: 80)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorGray90001,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(25.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(right: 48)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgComputer,
                                              height: getVerticalSize(18.00),
                                              width: getHorizontalSize(15.00),
                                              alignment: Alignment.topRight,
                                              margin: getMargin(
                                                  top: 96, right: 70)),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(37.00),
                                                  width:
                                                      getHorizontalSize(29.00),
                                                  margin: getMargin(
                                                      top: 71, right: 59),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgMenu,
                                                            height:
                                                                getVerticalSize(
                                                                    37.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    29.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        10.00)),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        5.00),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            14),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorRedA200,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width:
                                                                              getSize(2.00)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorGray900011x1,
                                                                          height: getSize(
                                                                              1.00),
                                                                          width: getSize(
                                                                              1.00),
                                                                          margin:
                                                                              getMargin(left: 1)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorDeepOrange200,
                                                                          height: getVerticalSize(
                                                                              1.00),
                                                                          width: getHorizontalSize(
                                                                              2.00),
                                                                          alignment:
                                                                              Alignment.centerRight)
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgSettings,
                                              height: getVerticalSize(39.00),
                                              width: getHorizontalSize(36.00),
                                              alignment: Alignment.topRight,
                                              margin: getMargin(
                                                  top: 64, right: 60)),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(137.00),
                                                  width:
                                                      getHorizontalSize(54.00),
                                                  margin: getMargin(
                                                      right: 50, bottom: 2),
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 12,
                                                      right: 13,
                                                      bottom: 12),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgGroup717),
                                                          fit: BoxFit.cover)),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVector7x25,
                                                        height: getVerticalSize(
                                                            7.00),
                                                        width:
                                                            getHorizontalSize(
                                                                25.00),
                                                        alignment:
                                                            Alignment.topRight)
                                                  ]))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(43.00),
                                                  margin: getMargin(
                                                      top: 107, right: 50),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCrop,
                                                            height:
                                                                getVerticalSize(
                                                                    72.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    43.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                right: 10),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorBlueGray700,
                                                                      height: getVerticalSize(
                                                                          2.00),
                                                                      width: getHorizontalSize(
                                                                          1.00),
                                                                      margin: getMargin(
                                                                          bottom:
                                                                              1)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorBlueGray7003x1,
                                                                      height: getVerticalSize(
                                                                          3.00),
                                                                      width: getHorizontalSize(
                                                                          1.00),
                                                                      margin: getMargin(
                                                                          left:
                                                                              1)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorBlueGray7002x1,
                                                                      height: getVerticalSize(
                                                                          2.00),
                                                                      width: getHorizontalSize(
                                                                          1.00),
                                                                      margin: getMargin(
                                                                          left:
                                                                              1)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorBlueGray700,
                                                                      height: getVerticalSize(
                                                                          2.00),
                                                                      width: getHorizontalSize(
                                                                          1.00),
                                                                      margin: getMargin(
                                                                          left:
                                                                              1,
                                                                          top:
                                                                              1)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorBlueGray7003x1,
                                                                      height: getVerticalSize(
                                                                          3.00),
                                                                      width: getHorizontalSize(
                                                                          1.00),
                                                                      margin: getMargin(
                                                                          left:
                                                                              1)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVector3x1,
                                                                      height: getVerticalSize(
                                                                          3.00),
                                                                      width: getHorizontalSize(
                                                                          1.00),
                                                                      margin: getMargin(
                                                                          left:
                                                                              1)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVector2x1,
                                                                      height: getVerticalSize(
                                                                          2.00),
                                                                      width: getHorizontalSize(
                                                                          1.00),
                                                                      margin: getMargin(
                                                                          left:
                                                                              1)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorBlueGray700,
                                                                      height: getVerticalSize(
                                                                          2.00),
                                                                      width: getHorizontalSize(
                                                                          1.00),
                                                                      margin: getMargin(
                                                                          left:
                                                                              1)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVector3x1,
                                                                      height: getVerticalSize(
                                                                          3.00),
                                                                      width: getHorizontalSize(
                                                                          1.00),
                                                                      margin: getMargin(
                                                                          left:
                                                                              1)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorBlueGray700,
                                                                      height: getVerticalSize(
                                                                          3.00),
                                                                      width: getHorizontalSize(
                                                                          1.00),
                                                                      margin: getMargin(
                                                                          left:
                                                                              1))
                                                                ]))
                                                      ]))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCall,
                                              height: getVerticalSize(47.00),
                                              width: getHorizontalSize(58.00),
                                              alignment: Alignment.topRight,
                                              margin: getMargin(
                                                  top: 76, right: 14)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueGray7005x43,
                                              height: getVerticalSize(5.00),
                                              width: getHorizontalSize(43.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 51, bottom: 136)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVector3x1,
                                              height: getVerticalSize(4.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 92, bottom: 135)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueGray700,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 90, bottom: 135)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueGray700,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 88, bottom: 134)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueGray7003x1,
                                              height: getVerticalSize(2.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 86, bottom: 134)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueGray7003x1,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 84, bottom: 133)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVector3x1,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 82, bottom: 133)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueGray700,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 80, bottom: 133)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueGray700,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 60, bottom: 133)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueGray700,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 58, bottom: 133)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVector3,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 56, bottom: 134)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueGray7003x1,
                                              height: getVerticalSize(2.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 54, bottom: 134)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVector3x1,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 52, bottom: 135)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVector4,
                                              height: getVerticalSize(3.00),
                                              width: getHorizontalSize(1.00),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 51, bottom: 136)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVector18x27,
                                              height: getVerticalSize(18.00),
                                              width: getHorizontalSize(27.00),
                                              alignment: Alignment.topRight,
                                              margin: getMargin(
                                                  top: 104, right: 66)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorDeepOrange2004x4,
                                              height: getSize(4.00),
                                              width: getSize(4.00),
                                              alignment: Alignment.topRight,
                                              margin: getMargin(
                                                  top: 71, right: 24)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorGray80001,
                                              height: getVerticalSize(5.00),
                                              width: getHorizontalSize(27.00),
                                              alignment: Alignment.bottomLeft,
                                              margin: getMargin(left: 24)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgAirplane,
                                              height: getVerticalSize(12.00),
                                              width: getHorizontalSize(27.00),
                                              alignment: Alignment.bottomLeft,
                                              margin: getMargin(
                                                  left: 2, bottom: 8)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueGray80001,
                                              height: getVerticalSize(122.00),
                                              width: getHorizontalSize(74.00),
                                              alignment: Alignment.bottomLeft,
                                              margin: getMargin(
                                                  left: 1, bottom: 2)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCheckmark37x36,
                                              height: getVerticalSize(37.00),
                                              width: getHorizontalSize(36.00),
                                              alignment: Alignment.topLeft,
                                              margin: getMargin(
                                                  left: 19, top: 123)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLightbulb15x10,
                                              height: getVerticalSize(15.00),
                                              width: getHorizontalSize(10.00),
                                              alignment: Alignment.topLeft,
                                              margin: getMargin(
                                                  left: 15, top: 138)),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(74.00),
                                                  width:
                                                      getHorizontalSize(47.00),
                                                  margin: getMargin(left: 34),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLightbulb74x47,
                                                            height:
                                                                getVerticalSize(
                                                                    74.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    47.00),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 7,
                                                                        bottom:
                                                                            2),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorDeepOrange100,
                                                                          height: getSize(
                                                                              4.00),
                                                                          width: getSize(
                                                                              4.00),
                                                                          margin:
                                                                              getMargin(bottom: 5)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorDeepOrange100,
                                                                          height: getSize(
                                                                              4.00),
                                                                          width: getSize(
                                                                              4.00),
                                                                          margin: getMargin(
                                                                              left: 9,
                                                                              top: 5)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorDeepOrange100,
                                                                          height: getSize(
                                                                              4.00),
                                                                          width: getSize(
                                                                              4.00),
                                                                          margin: getMargin(
                                                                              left: 3,
                                                                              top: 1,
                                                                              bottom: 4))
                                                                    ])))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(18.00),
                                                  width:
                                                      getHorizontalSize(15.00),
                                                  margin: getMargin(
                                                      left: 56, top: 109),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgVector18x15,
                                                            height:
                                                                getVerticalSize(
                                                                    18.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    15.00),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgMap,
                                                            height:
                                                                getVerticalSize(
                                                                    6.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    12.00),
                                                            alignment: Alignment
                                                                .centerLeft)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(35.00),
                                                  width:
                                                      getHorizontalSize(26.00),
                                                  margin: getMargin(
                                                      left: 47, top: 86),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgVolume,
                                                            height:
                                                                getVerticalSize(
                                                                    35.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    26.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        9.00)),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        7.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12.00),
                                                                margin:
                                                                    getMargin(
                                                                        left: 3,
                                                                        bottom:
                                                                            8),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorGray900014x7,
                                                                          height: getVerticalSize(
                                                                              4.00),
                                                                          width: getHorizontalSize(
                                                                              7.00),
                                                                          alignment:
                                                                              Alignment.topLeft),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorGray900014x11,
                                                                          height: getVerticalSize(
                                                                              4.00),
                                                                          width: getHorizontalSize(
                                                                              11.00),
                                                                          alignment:
                                                                              Alignment.bottomRight)
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVector13x13,
                                              height: getSize(13.00),
                                              width: getSize(13.00),
                                              alignment: Alignment.topLeft,
                                              margin:
                                                  getMargin(left: 46, top: 91)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVector11x11,
                                              height: getSize(11.00),
                                              width: getSize(11.00),
                                              alignment: Alignment.topLeft,
                                              margin: getMargin(
                                                  left: 67, top: 102)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVector21x33,
                                              height: getVerticalSize(21.00),
                                              width: getHorizontalSize(33.00),
                                              alignment: Alignment.topLeft,
                                              margin:
                                                  getMargin(left: 51, top: 76)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCheckmark16x14,
                                              height: getVerticalSize(16.00),
                                              width: getHorizontalSize(14.00),
                                              alignment: Alignment.centerLeft,
                                              margin: getMargin(left: 24)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgOffer6x7,
                                              height: getVerticalSize(6.00),
                                              width: getHorizontalSize(7.00),
                                              alignment: Alignment.topLeft,
                                              margin: getMargin(
                                                  left: 26, top: 145)),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(51.00),
                                                  width:
                                                      getHorizontalSize(49.00),
                                                  margin: getMargin(left: 31),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCheckmark51x49,
                                                            height:
                                                                getVerticalSize(
                                                                    51.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    49.00),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        49.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        48.00),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgCheckmark30x26,
                                                                          height: getVerticalSize(
                                                                              30.00),
                                                                          width: getHorizontalSize(
                                                                              26.00),
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          margin: getMargin(
                                                                              left: 8,
                                                                              top: 3)),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: Container(
                                                                              height: getVerticalSize(39.00),
                                                                              width: getHorizontalSize(48.00),
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgVector39x48, height: getVerticalSize(39.00), width: getHorizontalSize(48.00), alignment: Alignment.center),
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: Padding(
                                                                                        padding: getPadding(left: 7, right: 8),
                                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                          Align(
                                                                                              alignment: Alignment.centerRight,
                                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                                CustomImageView(svgPath: ImageConstant.imgVectorDeepOrange100, height: getSize(4.00), width: getSize(4.00), margin: getMargin(bottom: 2)),
                                                                                                CustomImageView(svgPath: ImageConstant.imgVectorDeepOrange100, height: getSize(4.00), width: getSize(4.00), margin: getMargin(left: 9, top: 2))
                                                                                              ])),
                                                                                          CustomImageView(svgPath: ImageConstant.imgVectorDeepOrange100, height: getSize(4.00), width: getSize(4.00), margin: getMargin(left: 6, top: 1)),
                                                                                          Padding(
                                                                                              padding: getPadding(top: 5),
                                                                                              child: Row(children: [
                                                                                                CustomImageView(svgPath: ImageConstant.imgVectorDeepOrange100, height: getSize(4.00), width: getSize(4.00), margin: getMargin(bottom: 3)),
                                                                                                CustomImageView(svgPath: ImageConstant.imgVectorDeepOrange100, height: getSize(4.00), width: getSize(4.00), margin: getMargin(left: 3, top: 3)),
                                                                                                CustomImageView(svgPath: ImageConstant.imgVectorDeepOrange100, height: getSize(4.00), width: getSize(4.00), margin: getMargin(left: 11, top: 1, bottom: 1))
                                                                                              ])),
                                                                                          CustomImageView(svgPath: ImageConstant.imgVectorDeepOrange100, height: getSize(4.00), width: getSize(4.00), alignment: Alignment.centerRight, margin: getMargin(top: 3, right: 5))
                                                                                        ])))
                                                                              ]))),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorDeepOrange100,
                                                                          height: getSize(
                                                                              4.00),
                                                                          width: getSize(
                                                                              4.00),
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          margin: getMargin(
                                                                              left: 12,
                                                                              top: 7)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorDeepOrange100,
                                                                          height: getSize(
                                                                              4.00),
                                                                          width: getSize(
                                                                              4.00),
                                                                          alignment: Alignment
                                                                              .topRight,
                                                                          margin:
                                                                              getMargin(right: 4)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorDeepOrange100,
                                                                          height: getSize(
                                                                              4.00),
                                                                          width: getSize(
                                                                              4.00),
                                                                          alignment: Alignment
                                                                              .topRight,
                                                                          margin: getMargin(
                                                                              top: 1,
                                                                              right: 16))
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVolume18x27,
                                              height: getVerticalSize(18.00),
                                              width: getHorizontalSize(27.00),
                                              alignment: Alignment.topLeft,
                                              margin:
                                                  getMargin(left: 47, top: 86)),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(19.00),
                                                  width:
                                                      getHorizontalSize(14.00),
                                                  margin: getMargin(
                                                      left: 11, top: 132),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgVector19x14,
                                                            height:
                                                                getVerticalSize(
                                                                    19.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    14.00),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        17.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12.00),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgMinimize16x10,
                                                                          height: getVerticalSize(
                                                                              16.00),
                                                                          width: getHorizontalSize(
                                                                              10.00),
                                                                          alignment:
                                                                              Alignment.bottomLeft),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgCrop15x11,
                                                                          height: getVerticalSize(
                                                                              15.00),
                                                                          width: getHorizontalSize(
                                                                              11.00),
                                                                          alignment:
                                                                              Alignment.topRight),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorLime900,
                                                                          height: getVerticalSize(
                                                                              7.00),
                                                                          width: getHorizontalSize(
                                                                              5.00),
                                                                          alignment: Alignment
                                                                              .bottomRight,
                                                                          margin:
                                                                              getMargin(right: 1))
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVector5,
                                              height: getSize(1.00),
                                              width: getSize(1.00),
                                              alignment: Alignment.topLeft,
                                              margin: getMargin(
                                                  left: 50, top: 103)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVector5,
                                              height: getSize(1.00),
                                              width: getSize(1.00),
                                              alignment: Alignment.topLeft,
                                              margin: getMargin(
                                                  left: 60, top: 103)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorDeepOrange100,
                                              height: getSize(4.00),
                                              width: getSize(4.00),
                                              alignment: Alignment.topLeft,
                                              margin: getMargin(
                                                  left: 47, top: 126)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorDeepOrange100,
                                              height: getSize(4.00),
                                              width: getSize(4.00),
                                              alignment: Alignment.bottomLeft,
                                              margin: getMargin(
                                                  left: 39, bottom: 132)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorDeepOrange100,
                                              height: getSize(4.00),
                                              width: getSize(4.00),
                                              alignment: Alignment.bottomLeft,
                                              margin: getMargin(
                                                  left: 70, bottom: 128)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorDeepOrange100,
                                              height: getSize(4.00),
                                              width: getSize(4.00),
                                              alignment: Alignment.bottomLeft,
                                              margin: getMargin(
                                                  left: 49, bottom: 128)),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(27.00),
                                                  width:
                                                      getHorizontalSize(21.00),
                                                  margin: getMargin(top: 103),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLightbulb27x21,
                                                            height:
                                                                getVerticalSize(
                                                                    27.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    21.00),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFavorite7x10,
                                                            height:
                                                                getVerticalSize(
                                                                    7.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    10.00),
                                                            alignment: Alignment
                                                                .topCenter,
                                                            margin: getMargin(
                                                                top: 7))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(27.00),
                                                  width:
                                                      getHorizontalSize(21.00),
                                                  margin: getMargin(
                                                      left: 73, top: 10),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgSave,
                                                            height:
                                                                getVerticalSize(
                                                                    27.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    21.00),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFavorite7x10,
                                                            height:
                                                                getVerticalSize(
                                                                    7.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    10.00),
                                                            alignment: Alignment
                                                                .topCenter,
                                                            margin: getMargin(
                                                                top: 7))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(27.00),
                                                  width:
                                                      getHorizontalSize(21.00),
                                                  margin: getMargin(
                                                      right: 136, bottom: 62),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLightbulb27x21,
                                                            height:
                                                                getVerticalSize(
                                                                    27.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    21.00),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFavorite1,
                                                            height:
                                                                getVerticalSize(
                                                                    7.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    10.00),
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            margin: getMargin(
                                                                bottom: 7))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(23.00),
                                                  width:
                                                      getHorizontalSize(18.00),
                                                  margin: getMargin(right: 103),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLightbulb27x21,
                                                            height:
                                                                getVerticalSize(
                                                                    23.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    18.00),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFavorite6x8,
                                                            height:
                                                                getVerticalSize(
                                                                    6.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    8.00),
                                                            alignment: Alignment
                                                                .topCenter,
                                                            margin: getMargin(
                                                                top: 6))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(19.00),
                                                  width:
                                                      getHorizontalSize(15.00),
                                                  margin: getMargin(top: 25),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLightbulb27x21,
                                                            height:
                                                                getVerticalSize(
                                                                    19.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    15.00),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorRedA2005x6,
                                                            height:
                                                                getVerticalSize(
                                                                    5.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    6.00),
                                                            alignment: Alignment
                                                                .topCenter,
                                                            margin: getMargin(
                                                                top: 4))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(17.00),
                                                  width:
                                                      getHorizontalSize(28.00),
                                                  margin: getMargin(
                                                      top: 29, right: 106),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgBookmark17x28,
                                                            height:
                                                                getVerticalSize(
                                                                    17.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    28.00),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorBlueGray800012x2,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width:
                                                                              getSize(2.00)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorBlueGray800012x2,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width: getSize(
                                                                              2.00),
                                                                          margin:
                                                                              getMargin(left: 4)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector2x2,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width: getSize(
                                                                              2.00),
                                                                          margin:
                                                                              getMargin(left: 4))
                                                                    ])))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(17.00),
                                                  width:
                                                      getHorizontalSize(28.00),
                                                  margin: getMargin(top: 35),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgBookmark17x28,
                                                            height:
                                                                getVerticalSize(
                                                                    17.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    28.00),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector2x2,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width:
                                                                              getSize(2.00)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector2x2,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width: getSize(
                                                                              2.00),
                                                                          margin:
                                                                              getMargin(left: 4)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector2x2,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width: getSize(
                                                                              2.00),
                                                                          margin:
                                                                              getMargin(left: 4))
                                                                    ])))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(17.00),
                                                  width:
                                                      getHorizontalSize(28.00),
                                                  margin: getMargin(
                                                      right: 102, bottom: 102),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgBookmark17x28,
                                                            height:
                                                                getVerticalSize(
                                                                    17.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    28.00),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            5),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector2x2,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width:
                                                                              getSize(2.00)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector6,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width: getSize(
                                                                              2.00),
                                                                          margin:
                                                                              getMargin(left: 4)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector7,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width: getSize(
                                                                              2.00),
                                                                          margin:
                                                                              getMargin(left: 4))
                                                                    ])))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(17.00),
                                                  width:
                                                      getHorizontalSize(28.00),
                                                  margin: getMargin(
                                                      left: 82, bottom: 76),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgBookmark17x28,
                                                            height:
                                                                getVerticalSize(
                                                                    17.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    28.00),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            5),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector6,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width:
                                                                              getSize(2.00)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector7,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width: getSize(
                                                                              2.00),
                                                                          margin:
                                                                              getMargin(left: 4)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVector6,
                                                                          height: getSize(
                                                                              2.00),
                                                                          width: getSize(
                                                                              2.00),
                                                                          margin:
                                                                              getMargin(left: 4))
                                                                    ])))
                                                      ])))
                                        ])))
                          ])),
                      Padding(
                          padding: getPadding(top: 47),
                          child: Text("msg_share_your_memories".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBirthstoneRegular40Pink80001
                                  .copyWith(height: 1.38))),
                      Container(
                          width: getHorizontalSize(286.00),
                          margin: getMargin(top: 25),
                          child: Text("msg_post_your_amazing".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtAsapRomanRegular15
                                  .copyWith(height: 1.67))),
                      Padding(
                          padding: getPadding(left: 10, top: 51, right: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtBack();
                                    },
                                    child: Text("lbl_back".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAsapRomanSemiBold18
                                            .copyWith(height: 1.17))),
                                Container(
                                    height: getVerticalSize(12.00),
                                    margin: getMargin(top: 5, bottom: 4),
                                    child: SmoothIndicator(
                                        offset: 0,
                                        count: 3,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 12,
                                            activeDotColor:
                                                ColorConstant.pink80001,
                                            dotColor: ColorConstant.pink8006c,
                                            dotHeight: getVerticalSize(12.00),
                                            dotWidth:
                                                getHorizontalSize(12.00)))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtStart();
                                    },
                                    child: Text("lbl_start".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtAsapRomanSemiBold18Pink80001
                                            .copyWith(height: 1.17)))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapTxtAlreadyhavean();
                          },
                          child: Padding(
                              padding: getPadding(top: 46),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_already_have_an2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "lbl_sign_in".tr,
                                        style: TextStyle(
                                            color: ColorConstant.pink80001,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))));
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapTxtBack() {
    Get.toNamed(AppRoutes.onboardingTwoScreen);
  }

  onTapTxtStart() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
