import 'controller/account_information_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/core/utils/validation_functions.dart';
import 'package:recquest_21/widgets/custom_button.dart';
import 'package:recquest_21/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AccountInformationScreen extends GetWidget<AccountInformationController> {
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(19.00),
                              width: size.width,
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700)),
                          Padding(
                              padding: getPadding(left: 10, top: 9),
                              child: Text("msg_select_a_username".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold20)),
                          Padding(
                              padding: getPadding(left: 10, top: 12),
                              child: Text("msg_help_secure_your".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium16Black90099)),
                          Padding(
                              padding: getPadding(left: 10, top: 7),
                              child: Text("lbl_username".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium14Black90099)),
                          CustomTextFormField(
                              width: 355,
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "msg_youremail_gmail_com".tr,
                              margin: getMargin(top: 10),
                              alignment: Alignment.center,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 17, bottom: 13),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCheckmark26x24)),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(26.00),
                                  minHeight: getVerticalSize(26.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(left: 10, top: 9),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium14Black90099)),
                          CustomTextFormField(
                              width: 355,
                              focusNode: FocusNode(),
                              controller: controller.emailOneController,
                              hintText: "msg_youremail_gmail_com".tr,
                              margin: getMargin(top: 10),
                              alignment: Alignment.center,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 17, bottom: 13),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCheckmark26x24)),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(26.00),
                                  minHeight: getVerticalSize(26.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(left: 10, top: 9),
                              child: Text("msg_confirm_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium14Black90099)),
                          CustomTextFormField(
                              width: 355,
                              focusNode: FocusNode(),
                              controller: controller.emailTwoController,
                              hintText: "msg_youremail_gmail_com".tr,
                              margin: getMargin(top: 10),
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 17, bottom: 13),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCheckmark26x24)),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(26.00),
                                  minHeight: getVerticalSize(26.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomButton(
                              height: 49,
                              width: 355,
                              text: "lbl_done2".tr,
                              margin: getMargin(top: 10, bottom: 5),
                              shape: ButtonShape.RoundedBorder10,
                              padding: ButtonPadding.PaddingAll9,
                              fontStyle: ButtonFontStyle.PoppinsSemiBold18,
                              onTap: onTapDone,
                              alignment: Alignment.center)
                        ])))));
  }

  onTapDone() {
    Get.toNamed(AppRoutes.myProfileScreen);
  }
}
