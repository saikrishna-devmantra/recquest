import 'controller/my_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/custom_button.dart';
import 'package:recquest_21/presentation/messages_dialog/messages_dialog.dart';
import 'package:recquest_21/presentation/messages_dialog/controller/messages_controller.dart';

class MyProfileScreen extends GetWidget<MyProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 48, top: 7, right: 48, bottom: 7),
                          decoration: AppDecoration.outlineBlack9003f,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    height: getVerticalSize(109.00),
                                    width: getHorizontalSize(108.00),
                                    margin: getMargin(top: 18),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage3,
                                              height: getSize(108.00),
                                              width: getSize(108.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(54.00)),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(right: 9),
                                                  color:
                                                      ColorConstant.pink80001,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          width:
                                                              getHorizontalSize(
                                                                  2.00)),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15),
                                                  child: Container(
                                                      height: getSize(27.00),
                                                      width: getSize(27.00),
                                                      padding:
                                                          getPadding(all: 6),
                                                      decoration: AppDecoration
                                                          .outlineWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder15),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgForward,
                                                            height:
                                                                getSize(14.00),
                                                            width:
                                                                getSize(14.00),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))))
                                        ])),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(top: 10, right: 30),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_david_william".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRomanBold20),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgEdit,
                                                  height: getSize(19.00),
                                                  width: getSize(19.00),
                                                  margin: getMargin(
                                                      left: 17,
                                                      top: 1,
                                                      bottom: 3),
                                                  onTap: () {
                                                    onTapImgEdit();
                                                  })
                                            ]))),
                                Container(
                                    width: getHorizontalSize(155.00),
                                    margin: getMargin(top: 14),
                                    child: Text("msg_lifestyle_uiux".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .txtMontserratRomanRegular10)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtHttpswwwyoutubecom();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 13),
                                        child: Text(
                                            "msg_https_www_youtube_com".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium10))),
                                Padding(
                                    padding: getPadding(top: 17, right: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapPosts();
                                              },
                                              child: Container(
                                                  height:
                                                      getVerticalSize(39.00),
                                                  width:
                                                      getHorizontalSize(30.00),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
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
                                                                "lbl_posts".tr,
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
                                                  padding: getPadding(left: 75),
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
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratRomanSemiBold24),
                                                        Text("lbl_followers".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
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
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratRomanSemiBold24),
                                                        Text("lbl_following".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratRomanSemiBold10)
                                                      ])))
                                        ])),
                                Container(
                                    height: getVerticalSize(3.00),
                                    width: getHorizontalSize(42.00),
                                    margin: getMargin(top: 15),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(0.03, 0),
                                            end: Alignment(0.97, 1),
                                            colors: [
                                          ColorConstant.pinkA200,
                                          ColorConstant.redA700
                                        ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 15, top: 15),
                          child: Text("lbl_about_me".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAsapItalicBold18Pink800a6
                                  .copyWith(height: 1.17))),
                      Container(
                          height: getVerticalSize(98.00),
                          width: getHorizontalSize(326.00),
                          margin: getMargin(left: 16, top: 19),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        width: getHorizontalSize(326.00),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "msg_enjoy_your_favorite3"
                                                          .tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(16),
                                                      fontFamily: 'Asap',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.56)),
                                              TextSpan(
                                                  text: "lbl3".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(16),
                                                      fontFamily: 'Asap',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.56)),
                                              TextSpan(
                                                  text: " ",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .blueGray80002,
                                                      fontSize: getFontSize(16),
                                                      fontFamily: 'Asap',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.56)),
                                              TextSpan(
                                                  text: "lbl_read_more".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .pink80001,
                                                      fontSize: getFontSize(16),
                                                      fontFamily: 'Asap',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.56))
                                            ]),
                                            textAlign: TextAlign.left))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector10,
                                    height: getVerticalSize(2.00),
                                    width: getHorizontalSize(5.00),
                                    alignment: Alignment.bottomRight,
                                    margin: getMargin(right: 121, bottom: 9))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 12, right: 9),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3, bottom: 3),
                                        child: Text("lbl_interest".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtAsapItalicBold18
                                                .copyWith(height: 1.17))),
                                    CustomButton(
                                        height: 28,
                                        width: 85,
                                        text: "lbl_change".tr.toUpperCase(),
                                        variant:
                                            ButtonVariant.OutlineCyan30014_2,
                                        padding: ButtonPadding.PaddingT7,
                                        fontStyle:
                                            ButtonFontStyle.ArialBoldItalicMT10,
                                        prefixWidget: Container(
                                            margin: getMargin(right: 2),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgEdit13x12)))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 13),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(111.00),
                                        padding: getPadding(
                                            left: 15,
                                            top: 6,
                                            right: 15,
                                            bottom: 6),
                                        decoration: AppDecoration
                                            .txtFillIndigoA20001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("lbl_games_online".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAsapItalicMedium13)),
                                    Container(
                                        width: getHorizontalSize(76.00),
                                        margin: getMargin(left: 12),
                                        padding: getPadding(
                                            left: 15,
                                            top: 6,
                                            right: 15,
                                            bottom: 6),
                                        decoration: AppDecoration.txtFillRed400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("lbl_concert".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAsapItalicMedium13)),
                                    Container(
                                        width: getHorizontalSize(64.00),
                                        margin: getMargin(left: 12),
                                        padding: getPadding(
                                            left: 15,
                                            top: 6,
                                            right: 15,
                                            bottom: 6),
                                        decoration: AppDecoration
                                            .txtFillDeeporange300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("lbl_music".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAsapItalicMedium13)),
                                    Container(
                                        width: getHorizontalSize(48.00),
                                        margin: getMargin(left: 9),
                                        padding: getPadding(
                                            left: 15,
                                            top: 6,
                                            right: 15,
                                            bottom: 6),
                                        decoration: AppDecoration
                                            .txtFillDeeppurpleA200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("lbl_art".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtAsapItalicMedium13))
                                  ]))),
                      CustomButton(
                          height: 29,
                          width: 65,
                          text: "lbl_movie".tr,
                          margin: getMargin(left: 16, top: 12),
                          variant: ButtonVariant.FillTealA400,
                          fontStyle: ButtonFontStyle.AsapItalicMedium13),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 157),
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

  onTapImgEdit() {
    Get.toNamed(AppRoutes.personalInformationScreen);
  }

  onTapTxtHttpswwwyoutubecom() async {
    var url = 'https://www.youtube.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.youtube.com/';
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
}
