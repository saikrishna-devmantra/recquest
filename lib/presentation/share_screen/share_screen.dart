import 'controller/share_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/custom_icon_button.dart';
import 'package:recquest_21/domain/facebookauth/facebook_auth_helper.dart';

class ShareScreen extends GetWidget<ShareController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(359.00),
                          width: size.width,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: size.width,
                                    padding: getPadding(
                                        left: 174,
                                        top: 5,
                                        right: 174,
                                        bottom: 5),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(2.00),
                                              width: getHorizontalSize(26.00),
                                              margin: getMargin(bottom: 344),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.gray4007f))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(left: 24, right: 29),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                  "msg_share_with_friends".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtAsapItalicBold24Gray90001)),
                                          Padding(
                                              padding: getPadding(top: 25),
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(290.00),
                                                  height:
                                                      getVerticalSize(40.00),
                                                  child: Obx(() => PinCodeTextField(
                                                      appContext: context,
                                                      controller: controller
                                                          .otpController.value,
                                                      length: 4,
                                                      obscureText: false,
                                                      obscuringCharacter: '*',
                                                      keyboardType:
                                                          TextInputType.number,
                                                      autoDismissKeyboard: true,
                                                      enableActiveFill: true,
                                                      inputFormatters: [
                                                        FilteringTextInputFormatter
                                                            .digitsOnly
                                                      ],
                                                      onChanged: (value) {},
                                                      pinTheme: PinTheme(
                                                          fieldHeight:
                                                              getHorizontalSize(
                                                                  40.00),
                                                          fieldWidth:
                                                              getHorizontalSize(
                                                                  40.00),
                                                          shape: PinCodeFieldShape
                                                              .box,
                                                          borderRadius: BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  12.00)),
                                                          selectedFillColor:
                                                              ColorConstant.gray20003,
                                                          activeFillColor: ColorConstant.gray20003,
                                                          inactiveFillColor: ColorConstant.gray20003,
                                                          inactiveColor: ColorConstant.fromHex("#1212121D"),
                                                          selectedColor: ColorConstant.fromHex("#1212121D"),
                                                          activeColor: ColorConstant.fromHex("#1212121D")))))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapRowcopylink();
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 13, top: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_copy_link"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtAsapItalicBold13Bluegray80002)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_whatsapp"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtAsapItalicBold13Bluegray80002)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "lbl_facebook"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtAsapItalicBold13Bluegray80002)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_messenger"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtAsapItalicBold13Bluegray80002))
                                                          ])))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 21, top: 21, right: 10),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 40,
                                                        width: 40,
                                                        variant: IconButtonVariant
                                                            .OutlineLightblue50033,
                                                        shape: IconButtonShape
                                                            .RoundedBorder12,
                                                        padding:
                                                            IconButtonPadding
                                                                .PaddingAll9,
                                                        onTap: () {
                                                          onTapBtntf();
                                                        },
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgTwitter)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup33449,
                                                        height: getSize(40.00),
                                                        width: getSize(40.00)),
                                                    CustomIconButton(
                                                        height: 40,
                                                        width: 40,
                                                        variant: IconButtonVariant
                                                            .OutlineBlue70033,
                                                        shape: IconButtonShape
                                                            .RoundedBorder12,
                                                        padding:
                                                            IconButtonPadding
                                                                .PaddingAll6,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgQuestion)),
                                                    CustomIconButton(
                                                        height: 40,
                                                        width: 40,
                                                        variant: IconButtonVariant
                                                            .OutlineGreenA70033,
                                                        shape: IconButtonShape
                                                            .RoundedBorder12,
                                                        padding:
                                                            IconButtonPadding
                                                                .PaddingAll6,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgVolume40x40))
                                                  ])),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      top: 10, right: 6),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_twitter"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtAsapItalicBold13Bluegray80002)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 33,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_instagram"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtAsapItalicBold13Bluegray80002)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 37,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_skype".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtAsapItalicBold13Bluegray80002)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 41,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_massage"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtAsapItalicBold13Bluegray80002))
                                                      ])))
                                        ])))
                          ]))
                    ])),
            bottomNavigationBar: Container(
                height: getVerticalSize(50.00),
                width: getHorizontalSize(233.00),
                margin: getMargin(left: 47, right: 40),
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgRectangleGray20004,
                      height: getVerticalSize(50.00),
                      width: getHorizontalSize(233.00),
                      radius: BorderRadius.circular(getHorizontalSize(15.00)),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Text("lbl_cancel".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAsapRomanBold16Gray80001
                              .copyWith(letterSpacing: 1.00)))
                ]))));
  }

  onTapRowcopylink() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapBtntf() async {
    var url = 'https://twitter.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }
}
