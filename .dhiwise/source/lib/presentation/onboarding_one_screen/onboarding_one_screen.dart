import '../onboarding_one_screen/widgets/onboarding_one_item_widget.dart';
import 'controller/onboarding_one_controller.dart';
import 'models/onboarding_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:recquest_21/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            body: Container(
                width: size.width,
                padding: getPadding(left: 37, right: 37),
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
                                  padding: getPadding(top: 6, right: 6),
                                  child: Text("lbl_skip".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtAsapRomanSemiBold18
                                          .copyWith(height: 1.17))))),
                      Container(
                          height: getVerticalSize(180.00),
                          width: getHorizontalSize(300.00),
                          margin: getMargin(top: 96),
                          child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(105.00),
                                        width: getHorizontalSize(55.00),
                                        margin: getMargin(left: 13, bottom: 29),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGroup1061),
                                                fit: BoxFit.cover)),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorDeepPurpleA100,
                                              height: getVerticalSize(102.00),
                                              width: getHorizontalSize(47.00),
                                              alignment: Alignment.topRight)
                                        ]))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(49.00),
                                        width: getHorizontalSize(39.00),
                                        margin: getMargin(left: 6, bottom: 27),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant.imgEye,
                                                  height:
                                                      getVerticalSize(49.00),
                                                  width:
                                                      getHorizontalSize(39.00),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgContrast,
                                                  height:
                                                      getVerticalSize(45.00),
                                                  width:
                                                      getHorizontalSize(36.00),
                                                  alignment: Alignment.topRight)
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: getVerticalSize(49.00),
                                        width: getHorizontalSize(271.00),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVectorDeepPurple50,
                                                  height:
                                                      getVerticalSize(49.00),
                                                  width:
                                                      getHorizontalSize(271.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 67, bottom: 2),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        7.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        11.00),
                                                                margin:
                                                                    getMargin(
                                                                        top: 3,
                                                                        bottom:
                                                                            25),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: Container(
                                                                              height: getVerticalSize(5.00),
                                                                              width: getHorizontalSize(11.00),
                                                                              decoration: BoxDecoration(color: ColorConstant.orange200))),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorWhiteA700,
                                                                          height: getVerticalSize(
                                                                              4.00),
                                                                          width: getHorizontalSize(
                                                                              11.00),
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          margin:
                                                                              getMargin(top: 1)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorPurple300,
                                                                          height: getSize(
                                                                              1.00),
                                                                          width: getSize(
                                                                              1.00),
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          margin:
                                                                              getMargin(left: 3)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorPurple200,
                                                                          height: getSize(
                                                                              1.00),
                                                                          width: getSize(
                                                                              1.00),
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          margin:
                                                                              getMargin(left: 2)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorPurple200,
                                                                          height: getSize(
                                                                              1.00),
                                                                          width: getSize(
                                                                              1.00),
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          margin:
                                                                              getMargin(left: 3)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorPurple300,
                                                                          height: getSize(
                                                                              1.00),
                                                                          width: getSize(
                                                                              1.00),
                                                                          alignment:
                                                                              Alignment.topCenter),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorPurple200,
                                                                          height: getSize(
                                                                              1.00),
                                                                          width: getSize(
                                                                              1.00),
                                                                          alignment:
                                                                              Alignment.topCenter),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorPurple200,
                                                                          height: getSize(
                                                                              1.00),
                                                                          width: getSize(
                                                                              1.00),
                                                                          alignment: Alignment
                                                                              .topRight,
                                                                          margin:
                                                                              getMargin(right: 4)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorPurple300,
                                                                          height: getSize(
                                                                              1.00),
                                                                          width: getSize(
                                                                              1.00),
                                                                          alignment: Alignment
                                                                              .topRight,
                                                                          margin:
                                                                              getMargin(right: 3)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorPurple200,
                                                                          height: getSize(
                                                                              1.00),
                                                                          width: getSize(
                                                                              1.00),
                                                                          alignment: Alignment
                                                                              .topRight,
                                                                          margin:
                                                                              getMargin(right: 3)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgVectorPurple200,
                                                                          height: getSize(
                                                                              1.00),
                                                                          width: getSize(
                                                                              1.00),
                                                                          alignment: Alignment
                                                                              .topRight,
                                                                          margin:
                                                                              getMargin(right: 2))
                                                                    ])),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            13),
                                                                padding:
                                                                    getPadding(
                                                                        all: 2),
                                                                decoration: AppDecoration
                                                                    .fillPurple300
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder18),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              32.00),
                                                                          padding: getPadding(
                                                                              all:
                                                                                  5),
                                                                          decoration: AppDecoration.fillPurple400.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .circleBorder18),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                    width: getHorizontalSize(21.00),
                                                                                    decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                    child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                      Container(
                                                                                          width: getHorizontalSize(19.00),
                                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                            CustomImageView(svgPath: ImageConstant.imgVectorPurple400, height: getSize(1.00), width: getSize(1.00), margin: getMargin(top: 9, bottom: 3)),
                                                                                            CustomImageView(svgPath: ImageConstant.imgVectorPurple400, height: getSize(1.00), width: getSize(1.00), margin: getMargin(top: 2, bottom: 10)),
                                                                                            Container(
                                                                                                height: getVerticalSize(14.00),
                                                                                                width: getHorizontalSize(13.00),
                                                                                                child: Stack(alignment: Alignment.topRight, children: [
                                                                                                  CustomImageView(svgPath: ImageConstant.imgVectorPurple400, height: getSize(1.00), width: getSize(1.00), alignment: Alignment.topLeft, margin: getMargin(left: 2)),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgVectorPurple4001x1, height: getSize(1.00), width: getSize(1.00), alignment: Alignment.topRight, margin: getMargin(top: 2, right: 2)),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgVector1x1, height: getSize(1.00), width: getSize(1.00), alignment: Alignment.bottomRight, margin: getMargin(bottom: 3)),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgMinimize, height: getVerticalSize(8.00), width: getHorizontalSize(9.00), alignment: Alignment.topLeft, margin: getMargin(top: 2)),
                                                                                                  Align(alignment: Alignment.bottomLeft, child: Container(height: getSize(2.00), width: getSize(2.00), margin: getMargin(left: 2, bottom: 3), decoration: BoxDecoration(color: ColorConstant.blueGray800, borderRadius: BorderRadius.circular(getHorizontalSize(1.00))))),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgVectorGray700, height: getVerticalSize(12.00), width: getHorizontalSize(5.00), alignment: Alignment.bottomRight),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgVectorGray7002x3, height: getVerticalSize(2.00), width: getHorizontalSize(3.00), alignment: Alignment.topLeft, margin: getMargin(left: 2))
                                                                                                ]))
                                                                                          ])),
                                                                                      Container(
                                                                                          width: getHorizontalSize(14.00),
                                                                                          margin: getMargin(left: 3, top: 1, right: 3),
                                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                            CustomImageView(svgPath: ImageConstant.imgVector1x1, height: getSize(1.00), width: getSize(1.00)),
                                                                                            CustomImageView(svgPath: ImageConstant.imgVector1x1, height: getSize(1.00), width: getSize(1.00))
                                                                                          ])),
                                                                                      CustomImageView(svgPath: ImageConstant.imgVectorPurple400, height: getSize(1.00), width: getSize(1.00), margin: getMargin(top: 1))
                                                                                    ]))
                                                                              ]))
                                                                    ]))
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(101.00),
                                        width: getHorizontalSize(53.00),
                                        margin: getMargin(right: 25),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGroup1061),
                                                fit: BoxFit.cover)),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgContrast,
                                              height: getVerticalSize(98.00),
                                              width: getHorizontalSize(45.00),
                                              alignment: Alignment.topLeft)
                                        ]))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: getVerticalSize(38.00),
                                        width: getHorizontalSize(31.00),
                                        margin:
                                            getMargin(right: 21, bottom: 41),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant.imgEye,
                                                  height:
                                                      getVerticalSize(38.00),
                                                  width:
                                                      getHorizontalSize(31.00),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgContrast,
                                                  height:
                                                      getVerticalSize(35.00),
                                                  width:
                                                      getHorizontalSize(28.00),
                                                  alignment: Alignment.topLeft)
                                            ]))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getVerticalSize(46.00),
                                    width: getHorizontalSize(7.00),
                                    alignment: Alignment.centerLeft,
                                    margin: getMargin(left: 124)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(22.00),
                                        width: getHorizontalSize(4.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray700))),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVectorDeepOrange300,
                                    height: getVerticalSize(5.00),
                                    width: getHorizontalSize(4.00),
                                    alignment: Alignment.topCenter,
                                    margin: getMargin(top: 74)),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(top: 29),
                                        color: ColorConstant.deepOrangeA100,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder23),
                                        child: Container(
                                            height: getSize(46.00),
                                            width: getSize(46.00),
                                            padding: getPadding(
                                                left: 5,
                                                top: 6,
                                                right: 5,
                                                bottom: 6),
                                            decoration: AppDecoration
                                                .fillDeeporangeA100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder23),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgReply,
                                                      height: getVerticalSize(
                                                          14.00),
                                                      width: getHorizontalSize(
                                                          8.00),
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin:
                                                          getMargin(top: 4)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroupBlueGray900,
                                                      height:
                                                          getVerticalSize(5.00),
                                                      width: getHorizontalSize(
                                                          6.00),
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin:
                                                          getMargin(right: 8))
                                                ])))),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVectorDeepPurple300,
                                    height: getVerticalSize(5.00),
                                    width: getHorizontalSize(4.00),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 126, top: 62)),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getVerticalSize(64.00),
                                        width: getHorizontalSize(33.00),
                                        margin: getMargin(left: 111),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgClose,
                                                  height:
                                                      getVerticalSize(64.00),
                                                  width:
                                                      getHorizontalSize(33.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          10.00),
                                                      margin: getMargin(
                                                          top: 4, right: 5),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVectorBlueGray900,
                                                                height:
                                                                    getVerticalSize(
                                                                        5.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        6.00)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            26.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            4.00),
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                5),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray900)))
                                                          ])))
                                            ]))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector,
                                    height: getVerticalSize(85.00),
                                    width: getHorizontalSize(69.00),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 21, top: 31)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector42x41,
                                    height: getVerticalSize(42.00),
                                    width: getHorizontalSize(41.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 78, bottom: 50)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector74x51,
                                    height: getVerticalSize(74.00),
                                    width: getHorizontalSize(51.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 36, bottom: 27)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgOffer,
                                    height: getVerticalSize(37.00),
                                    width: getHorizontalSize(55.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 96, bottom: 48)),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getVerticalSize(54.00),
                                        width: getHorizontalSize(30.00),
                                        margin: getMargin(left: 53, top: 38),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFire,
                                                  height:
                                                      getVerticalSize(54.00),
                                                  width:
                                                      getHorizontalSize(30.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          24.00),
                                                      width: getHorizontalSize(
                                                          25.00),
                                                      margin: getMargin(top: 9),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            4.00),
                                                                        width: getHorizontalSize(
                                                                            6.00),
                                                                        margin: getMargin(
                                                                            right:
                                                                                2,
                                                                            bottom:
                                                                                9),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgVectorWhiteA7003x6, height: getVerticalSize(3.00), width: getHorizontalSize(6.00), alignment: Alignment.topCenter),
                                                                              CustomImageView(svgPath: ImageConstant.imgVectorDeepOrangeA200, height: getVerticalSize(1.00), width: getHorizontalSize(6.00), alignment: Alignment.topCenter),
                                                                              CustomImageView(svgPath: ImageConstant.imgVectorDeepOrangeA2001x3, height: getVerticalSize(1.00), width: getHorizontalSize(3.00), alignment: Alignment.bottomRight)
                                                                            ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            3.00),
                                                                        margin: getMargin(
                                                                            right:
                                                                                8),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgVectorGray900, height: getVerticalSize(2.00), width: getHorizontalSize(3.00), alignment: Alignment.center),
                                                                              Align(
                                                                                  alignment: Alignment.centerRight,
                                                                                  child: Container(
                                                                                      height: getVerticalSize(3.00),
                                                                                      width: getHorizontalSize(2.00),
                                                                                      margin: getMargin(top: 1),
                                                                                      child: Stack(alignment: Alignment.topRight, children: [
                                                                                        CustomImageView(svgPath: ImageConstant.imgVectorRed200, height: getVerticalSize(1.00), width: getHorizontalSize(2.00), alignment: Alignment.bottomLeft),
                                                                                        CustomImageView(svgPath: ImageConstant.imgVectorGray9003x1, height: getVerticalSize(3.00), width: getHorizontalSize(1.00), alignment: Alignment.topRight),
                                                                                        CustomImageView(svgPath: ImageConstant.imgVectorBlueGray9001x1, height: getSize(1.00), width: getSize(1.00), alignment: Alignment.topLeft)
                                                                                      ])))
                                                                            ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            9.00),
                                                                        width: getHorizontalSize(
                                                                            6.00),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgVectorGray9001x3, height: getVerticalSize(1.00), width: getHorizontalSize(3.00), alignment: Alignment.topRight),
                                                                              CustomImageView(svgPath: ImageConstant.imgVectorGray9003x1, height: getVerticalSize(3.00), width: getHorizontalSize(1.00), alignment: Alignment.topRight, margin: getMargin(top: 3, right: 1)),
                                                                              CustomImageView(imagePath: ImageConstant.imgRectangle, height: getVerticalSize(2.00), width: getHorizontalSize(4.00), alignment: Alignment.bottomLeft),
                                                                              Align(
                                                                                  alignment: Alignment.bottomLeft,
                                                                                  child: Padding(
                                                                                      padding: getPadding(left: 1),
                                                                                      child: Row(children: [
                                                                                        CustomImageView(svgPath: ImageConstant.imgVectorGray9008x2, height: getVerticalSize(8.00), width: getHorizontalSize(2.00)),
                                                                                        CustomImageView(svgPath: ImageConstant.imgVectorGray9001x1, height: getSize(1.00), width: getSize(1.00), margin: getMargin(top: 6, bottom: 1))
                                                                                      ]))),
                                                                              CustomImageView(svgPath: ImageConstant.imgVectorBlueGray9001x1, height: getSize(1.00), width: getSize(1.00), alignment: Alignment.topRight, margin: getMargin(top: 3, right: 2))
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                9),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgVectorDeepOrange400,
                                                                              height: getVerticalSize(4.00),
                                                                              width: getHorizontalSize(5.00)),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgRectangle9x5,
                                                                              height: getVerticalSize(9.00),
                                                                              width: getHorizontalSize(5.00),
                                                                              margin: getMargin(top: 3))
                                                                        ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            8.00),
                                                                        width: getHorizontalSize(
                                                                            6.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                3),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.bottomRight,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.topCenter,
                                                                                  child: Card(
                                                                                      clipBehavior: Clip.antiAlias,
                                                                                      elevation: 0,
                                                                                      margin: EdgeInsets.all(0),
                                                                                      color: ColorConstant.deepOrange400,
                                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder3),
                                                                                      child: Container(
                                                                                          height: getSize(6.00),
                                                                                          width: getSize(6.00),
                                                                                          decoration: AppDecoration.fillDeeporange400.copyWith(borderRadius: BorderRadiusStyle.circleBorder3),
                                                                                          child: Stack(children: [
                                                                                            CustomImageView(svgPath: ImageConstant.imgVectorRed2004x4, height: getSize(4.00), width: getSize(4.00), alignment: Alignment.topRight)
                                                                                          ])))),
                                                                              Align(alignment: Alignment.bottomRight, child: Container(height: getSize(2.00), width: getSize(2.00), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(1.00)))))
                                                                            ])))
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(37.00),
                                        width: getHorizontalSize(55.00),
                                        margin: getMargin(left: 98, bottom: 48),
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgOffer37x55,
                                                  height:
                                                      getVerticalSize(37.00),
                                                  width:
                                                      getHorizontalSize(55.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          21.00),
                                                      margin:
                                                          getMargin(right: 5),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVectorDeepPurpleA1003x9,
                                                                height:
                                                                    getVerticalSize(
                                                                        3.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        9.00)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            14.00),
                                                                        width: getHorizontalSize(
                                                                            17.00),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topLeft,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgEye14x17, height: getVerticalSize(14.00), width: getHorizontalSize(17.00), alignment: Alignment.center),
                                                                              CustomImageView(imagePath: ImageConstant.imgRectangle12x8, height: getVerticalSize(12.00), width: getHorizontalSize(8.00), alignment: Alignment.topLeft),
                                                                              CustomImageView(svgPath: ImageConstant.imgGroupRed200, height: getVerticalSize(3.00), width: getHorizontalSize(10.00), alignment: Alignment.topLeft, margin: getMargin(left: 1, top: 2)),
                                                                              CustomImageView(svgPath: ImageConstant.imgGroupRed2004x7, height: getVerticalSize(4.00), width: getHorizontalSize(7.00), alignment: Alignment.centerLeft),
                                                                              CustomImageView(svgPath: ImageConstant.imgGroupRed200, height: getVerticalSize(1.00), width: getHorizontalSize(2.00), alignment: Alignment.bottomLeft, margin: getMargin(left: 3, bottom: 3))
                                                                            ])))
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(20.00),
                                        width: getHorizontalSize(23.00),
                                        margin: getMargin(left: 88, bottom: 58),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgOffer20x23,
                                                  height:
                                                      getVerticalSize(20.00),
                                                  width:
                                                      getHorizontalSize(23.00),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgGroupRed100,
                                                  height: getSize(1.00),
                                                  width: getSize(1.00),
                                                  alignment: Alignment.topLeft,
                                                  margin: getMargin(
                                                      left: 10, top: 2))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(13.00),
                                        width: getHorizontalSize(11.00),
                                        margin:
                                            getMargin(left: 100, bottom: 65),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle13x11,
                                                  height:
                                                      getVerticalSize(13.00),
                                                  width:
                                                      getHorizontalSize(11.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(bottom: 3),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroupRed100,
                                                                height: getSize(
                                                                    1.00),
                                                                width: getSize(
                                                                    1.00)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroupRed1001x1,
                                                                height: getSize(
                                                                    1.00),
                                                                width: getSize(
                                                                    1.00),
                                                                alignment: Alignment
                                                                    .centerRight)
                                                          ])))
                                            ]))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroupRed100,
                                    height: getSize(1.00),
                                    width: getSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 100, bottom: 73)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector70x61,
                                    height: getVerticalSize(70.00),
                                    width: getHorizontalSize(61.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 34, bottom: 28)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector16x12,
                                    height: getVerticalSize(16.00),
                                    width: getHorizontalSize(12.00),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 64, top: 38)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb46x8,
                                    height: getVerticalSize(46.00),
                                    width: getHorizontalSize(8.00),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 84, top: 34)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector51x35,
                                    height: getVerticalSize(51.00),
                                    width: getHorizontalSize(35.00),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 17, top: 45)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLocation,
                                    height: getVerticalSize(29.00),
                                    width: getHorizontalSize(26.00),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 27, top: 41)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgTrash,
                                    height: getVerticalSize(66.00),
                                    width: getHorizontalSize(88.00),
                                    alignment: Alignment.bottomRight,
                                    margin: getMargin(right: 50, bottom: 25)),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        width: getHorizontalSize(88.00),
                                        margin:
                                            getMargin(right: 42, bottom: 25),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGroup1063),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant.imgCar,
                                                  height:
                                                      getVerticalSize(10.00),
                                                  width:
                                                      getHorizontalSize(81.00),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 4, right: 12),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getSize(4.00),
                                                            width:
                                                                getSize(4.00),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .purple300)),
                                                        Container(
                                                            height:
                                                                getSize(4.00),
                                                            width:
                                                                getSize(4.00),
                                                            margin: getMargin(
                                                                left: 8),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .purple300)),
                                                        Container(
                                                            height:
                                                                getSize(4.00),
                                                            width:
                                                                getSize(4.00),
                                                            margin: getMargin(
                                                                left: 8),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .deepPurple400)),
                                                        Container(
                                                            height:
                                                                getSize(4.00),
                                                            width:
                                                                getSize(4.00),
                                                            margin: getMargin(
                                                                left: 8),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .deepPurple400))
                                                      ])),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 7),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                                height: getSize(
                                                                    4.00),
                                                                width: getSize(
                                                                    4.00),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .purple300)),
                                                            Container(
                                                                height: getSize(
                                                                    4.00),
                                                                width: getSize(
                                                                    4.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            8),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .purple300)),
                                                            Container(
                                                                height: getSize(
                                                                    4.00),
                                                                width: getSize(
                                                                    4.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            7),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .purple300)),
                                                            Container(
                                                                height: getSize(
                                                                    4.00),
                                                                width: getSize(
                                                                    4.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            8),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .purple300)),
                                                            Container(
                                                                height: getSize(
                                                                    4.00),
                                                                width: getSize(
                                                                    4.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            8),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .deepPurple400)),
                                                            Container(
                                                                height: getSize(
                                                                    4.00),
                                                                width: getSize(
                                                                    4.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            8),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .deepPurple400))
                                                          ]))),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 7,
                                                      right: 2,
                                                      bottom: 8),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Expanded(
                                                            child: Obx(() => ListView
                                                                .builder(
                                                                    physics:
                                                                        BouncingScrollPhysics(),
                                                                    shrinkWrap:
                                                                        true,
                                                                    itemCount: controller
                                                                        .onboardingOneModelObj
                                                                        .value
                                                                        .onboardingOneItemList
                                                                        .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      OnboardingOneItemModel
                                                                          model =
                                                                          controller
                                                                              .onboardingOneModelObj
                                                                              .value
                                                                              .onboardingOneItemList[index];
                                                                      return OnboardingOneItemWidget(
                                                                          model);
                                                                    }))),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    17.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    28.00),
                                                            margin: getMargin(
                                                                left: 2),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      child: Container(
                                                                          height: getSize(
                                                                              4.00),
                                                                          width: getSize(
                                                                              4.00),
                                                                          margin: getMargin(
                                                                              left:
                                                                                  4),
                                                                          decoration:
                                                                              BoxDecoration(color: ColorConstant.deepPurple400))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topRight,
                                                                      child: Container(
                                                                          height: getSize(
                                                                              4.00),
                                                                          width: getSize(
                                                                              4.00),
                                                                          margin: getMargin(
                                                                              right:
                                                                                  6),
                                                                          decoration:
                                                                              BoxDecoration(color: ColorConstant.deepPurple400))),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVector7x8,
                                                                      height: getVerticalSize(
                                                                          7.00),
                                                                      width: getHorizontalSize(
                                                                          8.00),
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      margin: getMargin(
                                                                          left:
                                                                              5,
                                                                          top:
                                                                              3)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgSignal,
                                                                      height: getSize(
                                                                          6.00),
                                                                      width: getSize(
                                                                          6.00),
                                                                      alignment:
                                                                          Alignment
                                                                              .topRight,
                                                                      margin: getMargin(
                                                                          top:
                                                                              5,
                                                                          right:
                                                                              7)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorPurple40001,
                                                                      height: getSize(
                                                                          2.00),
                                                                      width: getSize(
                                                                          2.00),
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      margin: getMargin(
                                                                          bottom:
                                                                              5)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              6.00),
                                                                          width: getHorizontalSize(
                                                                              28.00),
                                                                          decoration:
                                                                              BoxDecoration(color: ColorConstant.orange200)))
                                                                ]))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(10.00),
                                        width: getHorizontalSize(3.00),
                                        margin: getMargin(right: 118),
                                        decoration: BoxDecoration(
                                            color:
                                                ColorConstant.deepPurple400))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(10.00),
                                        width: getHorizontalSize(3.00),
                                        margin: getMargin(right: 109),
                                        decoration: BoxDecoration(
                                            color:
                                                ColorConstant.deepPurple400))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(10.00),
                                        width: getHorizontalSize(3.00),
                                        margin: getMargin(right: 67),
                                        decoration: BoxDecoration(
                                            color:
                                                ColorConstant.deepPurple400))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(10.00),
                                        width: getHorizontalSize(3.00),
                                        margin: getMargin(right: 58),
                                        decoration: BoxDecoration(
                                            color:
                                                ColorConstant.deepPurple400))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMusic,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(11.00),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 103, top: 64)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMusic24x11,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(11.00),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 21, right: 33)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMusic1,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(11.00),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 33, right: 88)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMusic2,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(11.00),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 30, top: 4)),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getSize(8.00),
                                        width: getSize(8.00),
                                        margin: getMargin(top: 68),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.deepPurple300,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(4.00))))),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                        height: getSize(9.00),
                                        width: getSize(9.00),
                                        margin: getMargin(top: 50, right: 106),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.deepPurple300,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(4.00))))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: getSize(8.00),
                                        width: getSize(8.00),
                                        margin:
                                            getMargin(right: 127, bottom: 65),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.deepPurple100,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(4.00))))),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                        height: getSize(9.00),
                                        width: getSize(9.00),
                                        margin: getMargin(top: 26, right: 88),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.deepPurple100,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(4.00))))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        margin: getMargin(
                                            left: 229,
                                            top: 145,
                                            right: 47,
                                            bottom: 18),
                                        decoration: AppDecoration.fillOrange200,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(15.00),
                                                  width:
                                                      getHorizontalSize(2.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .purple300)),
                                              Container(
                                                  margin: getMargin(left: 6),
                                                  padding: getPadding(
                                                      left: 3, right: 3),
                                                  decoration: AppDecoration
                                                      .fillOrange300,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    15.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    2.00),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .purple40001))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: getVerticalSize(6.00),
                                        width: getHorizontalSize(2.00),
                                        margin:
                                            getMargin(right: 63, bottom: 34),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.purple300))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        width: getHorizontalSize(11.00),
                                        margin:
                                            getMargin(right: 45, bottom: 34),
                                        padding: getPadding(left: 4, right: 4),
                                        decoration: AppDecoration.fillOrange300,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(6.00),
                                                  width:
                                                      getHorizontalSize(2.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .purple40001))
                                            ]))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple100,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(23.00),
                                    alignment: Alignment.bottomRight,
                                    margin: getMargin(right: 47, bottom: 32)),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                        height: getVerticalSize(54.00),
                                        width: getHorizontalSize(36.00),
                                        margin: getMargin(top: 34, right: 49),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVector54x36,
                                                  height:
                                                      getVerticalSize(54.00),
                                                  width:
                                                      getHorizontalSize(36.00),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          51.00),
                                                      width: getHorizontalSize(
                                                          35.00),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark,
                                                                height:
                                                                    getVerticalSize(
                                                                        28.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        23.00),
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left: 2,
                                                                        bottom:
                                                                            6)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark,
                                                                height:
                                                                    getVerticalSize(
                                                                        7.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        8.00),
                                                                alignment: Alignment
                                                                    .bottomRight),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark,
                                                                height:
                                                                    getVerticalSize(
                                                                        18.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        14.00),
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left: 8,
                                                                        top:
                                                                            7)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark,
                                                                height:
                                                                    getVerticalSize(
                                                                        16.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        17.00),
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            3)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark,
                                                                height:
                                                                    getVerticalSize(
                                                                        25.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        26.00),
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            2)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgSend,
                                                                height:
                                                                    getVerticalSize(
                                                                        51.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        18.00),
                                                                alignment: Alignment
                                                                    .centerLeft)
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(top: 23, right: 60),
                                        color: ColorConstant.purple300,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                        child: Container(
                                            height: getSize(17.00),
                                            width: getSize(17.00),
                                            padding:
                                                getPadding(left: 1, right: 1),
                                            decoration: AppDecoration
                                                .fillPurple300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 3),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVectorPurple2005x2,
                                                                    height:
                                                                        getVerticalSize(
                                                                            5.00),
                                                                    width: getHorizontalSize(
                                                                        2.00)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVectorPurple2001x1,
                                                                    height:
                                                                        getSize(
                                                                            1.00),
                                                                    width:
                                                                        getSize(
                                                                            1.00),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            2))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 1,
                                                              right: 2,
                                                              bottom: 11),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVectorPurple2003x5,
                                                                    height:
                                                                        getVerticalSize(
                                                                            3.00),
                                                                    width: getHorizontalSize(
                                                                        5.00)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVectorPurple2004x4,
                                                                    height:
                                                                        getSize(
                                                                            4.00),
                                                                    width:
                                                                        getSize(
                                                                            4.00))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 6),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVectorPurple2001x5,
                                                                height:
                                                                    getVerticalSize(
                                                                        1.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        5.00)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector1,
                                                                height: getSize(
                                                                    1.00),
                                                                width: getSize(
                                                                    1.00))
                                                          ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 2),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector4x4,
                                                                height: getSize(
                                                                    4.00),
                                                                width: getSize(
                                                                    4.00)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector1,
                                                                height: getSize(
                                                                    1.00),
                                                                width:
                                                                    getSize(
                                                                        1.00),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            3))
                                                          ]))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector1,
                                                      height:
                                                          getVerticalSize(2.00),
                                                      width: getHorizontalSize(
                                                          5.00),
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin:
                                                          getMargin(bottom: 6))
                                                ])))),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVectorPurple2004x1,
                                    height: getVerticalSize(4.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 23, right: 68)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector3x5,
                                    height: getVerticalSize(3.00),
                                    width: getHorizontalSize(5.00),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 27, right: 60)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVectorPurple2002x3,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(3.00),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 32, right: 74)),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(8.00),
                                        width: getHorizontalSize(16.00),
                                        margin: getMargin(left: 94, bottom: 19),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.orange200))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector6x17,
                                    height: getVerticalSize(6.00),
                                    width: getHorizontalSize(17.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 93, bottom: 22)),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(11.00),
                                        width: getHorizontalSize(21.00),
                                        margin: getMargin(left: 91, bottom: 9),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.orange300))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgTicket,
                                    height: getVerticalSize(9.00),
                                    width: getHorizontalSize(23.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 90, bottom: 13)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple300,
                                    height: getVerticalSize(3.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 95, bottom: 22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 94, bottom: 22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 96, bottom: 22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple300,
                                    height: getVerticalSize(3.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 102, bottom: 22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 101, bottom: 22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 102, bottom: 22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple300,
                                    height: getVerticalSize(3.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 107, bottom: 22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 106, bottom: 22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 107, bottom: 22)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple300,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 97, bottom: 29)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getSize(1.00),
                                    width: getSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 97, bottom: 29)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getSize(1.00),
                                    width: getSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 98, bottom: 29)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple300,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 102, bottom: 29)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getSize(1.00),
                                    width: getSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 101, bottom: 29)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getSize(1.00),
                                    width: getSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 102, bottom: 29)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple300,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 105, bottom: 29)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getSize(1.00),
                                    width: getSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 104, bottom: 29)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorPurple200,
                                    height: getSize(1.00),
                                    width: getSize(1.00),
                                    alignment: Alignment.bottomLeft,
                                    margin: getMargin(left: 106, bottom: 29))
                              ])),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Text("msg_create_awesome_events".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBirthstoneRegular40
                                  .copyWith(height: 1.38))),
                      Container(
                          width: getHorizontalSize(234.00),
                          margin: getMargin(top: 23),
                          child: Text("msg_create_events_send".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsMedium15
                                  .copyWith(height: 1.67))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 127, right: 3),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        height: getVerticalSize(12.00),
                                        margin: getMargin(top: 7, bottom: 7),
                                        child: SmoothIndicator(
                                            offset: 0,
                                            count: 3,
                                            axisDirection: Axis.horizontal,
                                            effect: ScrollingDotsEffect(
                                                spacing: 12,
                                                activeDotColor:
                                                    ColorConstant.pink80001,
                                                dotColor:
                                                    ColorConstant.pink8006c,
                                                dotHeight:
                                                    getVerticalSize(12.00),
                                                dotWidth:
                                                    getHorizontalSize(12.00)))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtNext();
                                        },
                                        child: Padding(
                                            padding: getPadding(left: 76),
                                            child: Text("lbl_next".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold18)))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapTxtAlreadyhavean();
                          },
                          child: Padding(
                              padding: getPadding(top: 41),
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

  onTapTxtNext() {
    Get.toNamed(AppRoutes.onboardingTwoScreen);
  }

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
