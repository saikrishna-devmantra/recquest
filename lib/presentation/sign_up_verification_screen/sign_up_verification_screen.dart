import 'controller/sign_up_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/custom_button.dart';
import 'package:recquest_21/widgets/custom_icon_button.dart';

class SignUpVerificationScreen extends GetWidget<SignUpVerificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            body: Container(
                width: size.width,
                padding: getPadding(left: 20, top: 19, right: 20, bottom: 19),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(16.00),
                          width: getHorizontalSize(20.00),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      CustomImageView(
                          svgPath: ImageConstant.imgRecquestlowerrbubble300,
                          height: getSize(118.00),
                          width: getSize(118.00),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(top: 18)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 26),
                              child: Text("lbl_verification".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAsapRomanBold24))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(251.00),
                              margin: getMargin(left: 22, top: 27),
                              child: Text("msg_we_ve_send_you_the".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16Black900
                                      .copyWith(height: 1.56)))),
                      Padding(
                          padding: getPadding(left: 20, top: 26, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: getSize(55.00),
                                    padding: getPadding(
                                        left: 21, top: 6, right: 21, bottom: 6),
                                    decoration: AppDecoration.txtOutlineGray600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder14),
                                    child: Text("lbl2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAsapRomanRegular32)),
                                Container(
                                    width: getSize(55.00),
                                    padding: getPadding(
                                        left: 21, top: 6, right: 21, bottom: 6),
                                    decoration: AppDecoration.txtOutlineGray600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder14),
                                    child: Text("lbl2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAsapRomanRegular32)),
                                Container(
                                    width: getSize(55.00),
                                    padding: getPadding(
                                        left: 21, top: 6, right: 21, bottom: 6),
                                    decoration: AppDecoration.txtOutlineGray600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder14),
                                    child: Text("lbl2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAsapRomanRegular32)),
                                Container(
                                    width: getSize(55.00),
                                    padding: getPadding(
                                        left: 21, top: 6, right: 21, bottom: 6),
                                    decoration: AppDecoration.txtOutlineGray600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder14),
                                    child: Text("lbl2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAsapRomanRegular32))
                              ])),
                      CustomButton(
                          height: 48,
                          width: 300,
                          text: "lbl_continue2".tr.toUpperCase(),
                          margin: getMargin(top: 38),
                          shape: ButtonShape.RoundedBorder14,
                          padding: ButtonPadding.PaddingAll9,
                          onTap: onTapContinue),
                      Padding(
                          padding: getPadding(top: 61),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_re_send_code_in".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(15),
                                        fontFamily: 'Asap',
                                        fontWeight: FontWeight.w600,
                                        height: 1.67)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.gray90001,
                                        fontSize: getFontSize(15),
                                        fontFamily: 'Asap',
                                        fontWeight: FontWeight.w600,
                                        height: 1.67)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.gray90001,
                                        fontSize: getFontSize(15),
                                        fontFamily: 'Asap',
                                        fontWeight: FontWeight.w600,
                                        height: 1.67)),
                                TextSpan(
                                    text: "lbl_0_20".tr,
                                    style: TextStyle(
                                        color: ColorConstant.indigoA200,
                                        fontSize: getFontSize(15),
                                        fontFamily: 'Asap',
                                        fontWeight: FontWeight.w600,
                                        height: 1.67))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 43),
                          child: Text("lbl_or_login_with".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAsapRomanRegular16
                                  .copyWith(height: 1.19))),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 60,
                                    width: 60,
                                    padding: IconButtonPadding.PaddingAll12,
                                    onTap: () {
                                      onTapBtntf();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgGoogle)),
                                CustomIconButton(
                                    height: 60,
                                    width: 60,
                                    margin: getMargin(left: 40),
                                    onTap: () {
                                      onTapBtntf1();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFacebook))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapTxtAlreadyhavean();
                          },
                          child: Padding(
                              padding: getPadding(top: 27, bottom: 5),
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

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  onTapContinue() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapBtntf() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }

  onTapBtntf1() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
