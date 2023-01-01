import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/core/utils/validation_functions.dart';
import 'package:recquest_21/widgets/custom_button.dart';
import 'package:recquest_21/widgets/custom_icon_button.dart';
import 'package:recquest_21/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
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
                              padding: getPadding(left: 18, top: 20),
                              child: Text("msg_pick_a_new_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAsapRomanBold24)),
                          Padding(
                              padding: getPadding(left: 18, top: 28),
                              child: Text("msg_help_secure_your".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium16Black90099)),
                          Obx(() => CustomTextFormField(
                              width: 340,
                              focusNode: FocusNode(),
                              controller: controller.groupFiftyFourController,
                              hintText: "lbl_new_password".tr,
                              margin: getMargin(left: 1, top: 21),
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
                              hintText: "msg_confirm_new_password".tr,
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
                              text: "lbl_done".tr.toUpperCase(),
                              margin: getMargin(left: 1, top: 23),
                              shape: ButtonShape.RoundedBorder14,
                              padding: ButtonPadding.PaddingAll9),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 117),
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
    Get.toNamed(AppRoutes.forgotPasswordScreen);
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
