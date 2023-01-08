import 'dart:convert';

import 'package:recquest_21/api/api_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../my_profile_screen/models/my_profile_model.dart';
import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/core/utils/validation_functions.dart';
import 'package:recquest_21/widgets/custom_button.dart';
import 'package:recquest_21/widgets/custom_icon_button.dart';
import 'package:recquest_21/widgets/custom_text_form_field.dart';
import 'package:recquest_21/domain/googleauth/google_auth_helper.dart';
import 'package:recquest_21/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    controller.emailController.text = 'saikrishnaporala@gmail.com';
    controller.passwordOneController.text = 'sksg@1010';
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 17, top: 54, right: 17, bottom: 54),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgRecquestlowerrbubble300,
                              height: getSize(118.00),
                              width: getSize(118.00),
                              margin: getMargin(left: 3)),
                          Padding(
                              padding: getPadding(left: 1, top: 17),
                              child: Text("lbl_hello_there".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAsapRomanBold24)),
                          Padding(
                              padding: getPadding(left: 1, top: 19),
                              child: Text("msg_login_or_signup".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAsapRomanRegular14)),
                          Padding(
                              padding: getPadding(left: 1, top: 16),
                              child: Text("lbl_your_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16)),
                          CustomTextFormField(
                              width: 340,
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "msg_youremail_gmail_com".tr,
                              margin: getMargin(left: 1, top: 5),
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
                          Padding(
                              padding: getPadding(left: 3, top: 31),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16)),
                          Obx(() => CustomTextFormField(
                              width: 338,
                              focusNode: FocusNode(),
                              controller: controller.passwordOneController,
                              hintText: "lbl".tr,
                              margin: getMargin(left: 3, top: 3),
                              padding: TextFormFieldPadding.PaddingT12,
                              textInputAction: TextInputAction.done,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 13,
                                          right: 16,
                                          bottom: 13),
                                      child: CustomImageView(
                                          svgPath: controller
                                                  .isShowPassword.value
                                              ? ImageConstant.imgEye26x24
                                              : ImageConstant.imgEye26x24))),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(24.00),
                                  minHeight: getVerticalSize(26.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value)),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 19),
                                      child: Text("msg_forgot_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtAsapRomanSemiBold15
                                              .copyWith(height: 1.20))))),
                          CustomButton(
                              height: 48,
                              width: 338,
                              text: "lbl_login".tr.toUpperCase(),
                              margin: getMargin(left: 3, top: 17),
                              shape: ButtonShape.RoundedBorder14,
                              padding: ButtonPadding.PaddingAll9,
                              onTap: onTapLogin),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 30),
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

  onTapTxtForgotpassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  onTapLogin() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      APIHandler apiClient = APIHandler();

      dynamic loginObj = {
        'email': controller.emailController.text,
        'password': controller.passwordOneController.text,
      };

      dynamic response = await apiClient.post('/login', data: loginObj);

      dynamic resondeData = response.data;
      MyProfileModel userprofile = MyProfileModel.fromJson(response.data);
      prefs.setString('access_token', resondeData['access_token']);
      prefs.setString('fullName', resondeData['user']['firstname']);
      prefs.setString('email', resondeData['user']['email']);
      Get.snackbar('Success', 'Login Success.');
      Get.toNamed(AppRoutes.mainhomeContainerScreen, arguments: userprofile);
    } catch (onError) {
      print(onError);
      Get.snackbar('Error', onError.toString());
    }
  }

  onTapBtntf() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapBtntf1() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtDonthaveanaccount() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
