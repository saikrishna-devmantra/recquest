import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/core/utils/validation_functions.dart';
import 'package:recquest_21/widgets/custom_button.dart';
import 'package:recquest_21/widgets/custom_icon_button.dart';
import 'package:recquest_21/widgets/custom_text_form_field.dart';
import 'package:recquest_21/domain/googleauth/google_auth_helper.dart';
import 'package:recquest_21/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
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
                              padding: getPadding(left: 3, top: 29),
                              child: Text("lbl_sign_up2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAsapRomanBold24)),
                          CustomTextFormField(
                              width: 340,
                              focusNode: FocusNode(),
                              controller: controller.groupFiftyFiveController,
                              hintText: "lbl_full_name".tr,
                              margin: getMargin(left: 1, top: 28),
                              fontStyle:
                                  TextFormFieldFontStyle.AsapRomanRegular14,
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
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 340,
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "msg_youremail_gmail_com".tr,
                              margin: getMargin(left: 1, top: 8),
                              fontStyle:
                                  TextFormFieldFontStyle.AsapRomanRegular14,
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
                          Obx(() => CustomTextFormField(
                              width: 340,
                              focusNode: FocusNode(),
                              controller: controller.groupFiftyFourController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(left: 1, top: 9),
                              fontStyle:
                                  TextFormFieldFontStyle.AsapRomanRegular14,
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
                          Obx(() => CustomTextFormField(
                              width: 340,
                              focusNode: FocusNode(),
                              controller: controller.groupFiftySixController,
                              hintText: "msg_confirm_password".tr,
                              margin: getMargin(left: 1, top: 8),
                              padding: TextFormFieldPadding.PaddingT12,
                              fontStyle:
                                  TextFormFieldFontStyle.AsapRomanRegular14,
                              textInputAction: TextInputAction.done,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword1.value =
                                        !controller.isShowPassword1.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 13,
                                          right: 21,
                                          bottom: 13),
                                      child: CustomImageView(
                                          svgPath: controller
                                                  .isShowPassword1.value
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
                              isObscureText:
                                  !controller.isShowPassword1.value)),
                          CustomButton(
                              height: 48,
                              width: 340,
                              text: "lbl_create_account".tr.toUpperCase(),
                              margin: getMargin(left: 1, top: 15),
                              shape: ButtonShape.RoundedBorder14,
                              padding: ButtonPadding.PaddingAll9,
                              onTap: onTapCreateaccount),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 39),
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
                                    onTapTxtAlreadyhavean();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 27, bottom: 5),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_already_have_an2".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            TextSpan(
                                                text: "lbl_sign_in".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.pink80001,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w500))
                                          ]),
                                          textAlign: TextAlign.left))))
                        ])))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapCreateaccount() {
    Get.toNamed(AppRoutes.signUpVerificationScreen);
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

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
