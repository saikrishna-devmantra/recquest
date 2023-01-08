import 'controller/personal_information_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/core/utils/validation_functions.dart';
import 'package:recquest_21/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalInformationScreen
    extends GetWidget<PersonalInformationController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray10001,
            body: Form(
                key: _formKey,
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
                              child: Text("msg_personal_information".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold20)),
                          Padding(
                              padding: getPadding(left: 10, top: 12),
                              child: Text("msg_please_fill_the".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium16Black90099)),
                          Padding(
                              padding: getPadding(left: 10, top: 7),
                              child: Text("lbl_first_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium14Black90099)),
                          CustomTextFormField(
                              width: 355,
                              focusNode: FocusNode(),
                              controller: controller.groupFiftyThreeController,
                              hintText: "lbl_first_name".tr,
                              margin: getMargin(top: 10),
                              alignment: Alignment.center,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 17, bottom: 13),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
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
                              child: Text("lbl_last_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium14Black90099)),
                          CustomTextFormField(
                              width: 355,
                              focusNode: FocusNode(),
                              controller: controller.groupFiftySevenController,
                              hintText: "lbl_last_name".tr,
                              margin: getMargin(top: 10),
                              alignment: Alignment.center,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 17, bottom: 13),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
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
                              child: Text("lbl_email_address".tr,
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
                                      svgPath: ImageConstant.imgCheckmark)),
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
                              child: Text("lbl_date_of_birth".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium14Black90099)),
                          CustomTextFormField(
                              width: 355,
                              focusNode: FocusNode(),
                              controller: controller.groupFiftyFiveController,
                              hintText: "lbl_date_of_birth2".tr,
                              margin: getMargin(top: 10),
                              alignment: Alignment.center,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 17, bottom: 13),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
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
                              child: Text("lbl_gender".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium14Black90099)),
                          CustomTextFormField(
                              width: 355,
                              focusNode: FocusNode(),
                              controller: controller.groupFiftySixController,
                              hintText: "lbl_gender".tr,
                              margin: getMargin(top: 10),
                              alignment: Alignment.center,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 17, bottom: 13),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(26.00),
                                  minHeight: getVerticalSize(26.00))),
                          Padding(
                              padding: getPadding(left: 10, top: 9, bottom: 5),
                              child: Text("lbl_about".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14Black90099))
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 10, right: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomTextFormField(
                      width: 355,
                      focusNode: FocusNode(),
                      controller: controller.inputController,
                      hintText: "msg_label_text_area".tr,
                      variant: TextFormFieldVariant.OutlineBluegray90019,
                      shape: TextFormFieldShape.RoundedBorder6,
                      padding: TextFormFieldPadding.PaddingT14,
                      fontStyle: TextFormFieldFontStyle
                          .AsapRomanRegular14Bluegray900b2,
                      textInputAction: TextInputAction.done,
                      maxLines: 9)
                ]))));
  }
}
