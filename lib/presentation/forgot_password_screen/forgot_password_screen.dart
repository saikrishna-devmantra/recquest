import 'package:recquest_21/api/api_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/core/utils/validation_functions.dart';
import 'package:recquest_21/widgets/custom_button.dart';
import 'package:recquest_21/widgets/custom_icon_button.dart';
import 'package:recquest_21/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 17, top: 19, right: 17, bottom: 19),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getVerticalSize(16.00),
                              width: getHorizontalSize(20.00),
                              margin: getMargin(left: 3),
                              onTap: () {
                                onTapImgArrowleft();
                              }),
                          CustomImageView(
                              svgPath: ImageConstant.imgRecquestlowerrbubble300,
                              height: getSize(118.00),
                              width: getSize(118.00),
                              margin: getMargin(left: 3, top: 18)),
                          Padding(
                              padding: getPadding(left: 13, top: 29),
                              child: Text("lbl_forgot_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAsapRomanBold24)),
                          Container(
                              width: getHorizontalSize(279.00),
                              margin: getMargin(left: 13, top: 25),
                              child: Text("msg_please_enter_your".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16Black900
                                      .copyWith(height: 1.56))),
                          CustomTextFormField(
                              width: 340,
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "msg_youremail_gmail_com".tr,
                              margin: getMargin(left: 1, top: 25),
                              fontStyle:
                                  TextFormFieldFontStyle.AsapRomanRegular14,
                              textInputAction: TextInputAction.done,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 16, bottom: 13),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCheckmark26x24)),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(24.00),
                                  minHeight: getVerticalSize(26.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomButton(
                              height: 48,
                              width: 340,
                              text: "lbl_continue2".tr.toUpperCase(),
                              margin: getMargin(left: 1, top: 39),
                              shape: ButtonShape.RoundedBorder14,
                              padding: ButtonPadding.PaddingAll9,
                              onTap: onTapContinue),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 126),
                                  child: Text("lbl_or_login_with".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtAsapRomanRegular16
                                          .copyWith(height: 1.19)))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 25),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomIconButton(
                                            height: 60,
                                            width: 60,
                                            padding:
                                                IconButtonPadding.PaddingAll12,
                                            onTap: () {
                                              onTapBtntf();
                                            },
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgGoogle)),
                                        CustomIconButton(
                                            height: 60,
                                            width: 60,
                                            margin: getMargin(left: 40),
                                            onTap: () {
                                              onTapBtntf1();
                                            },
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFacebook))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 26, bottom: 5),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_don_t_have_an_account2"
                                                        .tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(15),
                                                    fontFamily: 'Asap',
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.20)),
                                            TextSpan(
                                                text: "lbl_sign_up".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.pink80001,
                                                    fontSize: getFontSize(15),
                                                    fontFamily: 'Asap',
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.20))
                                          ]),
                                          textAlign: TextAlign.left))))
                        ])))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapContinue() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      APIHandler apiClient = APIHandler();

      dynamic forgotPswdObj = {
        "email": controller.emailController.text,
      };

      dynamic response =
          await apiClient.post('/forgotPassword', data: forgotPswdObj);

      // sample response
      // {
      //     "statusCode": "200",
      //     "message": "OTP sent to your email address",
      //     "email_otp_status": "email otp sent",
      //     "uid": 1
      // }
      dynamic responseData = response.data;

      prefs.setString('email', controller.emailController.text);
      prefs.setString('uid', responseData['uid']);
      Get.snackbar('Success', responseData['message']);
      Get.toNamed(AppRoutes.forgotPasswordVerificationScreen);
    } catch (onError) {
      print(onError);
      Get.snackbar('Error', onError.toString());
    }
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

  onTapTxtDonthaveanaccount() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
