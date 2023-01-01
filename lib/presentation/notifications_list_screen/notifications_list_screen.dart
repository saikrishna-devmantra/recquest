import '../notifications_list_screen/widgets/listellipsefiftyeight_one_item_widget.dart';
import '../notifications_list_screen/widgets/listellipsefiftyeight_three_item_widget.dart';
import 'controller/notifications_list_controller.dart';
import 'models/listellipsefiftyeight_one_item_model.dart';
import 'models/listellipsefiftyeight_three_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/custom_button.dart';

class NotificationsListScreen extends GetWidget<NotificationsListController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10001,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                height: 60,
                width: 375,
                text: "lbl_notifications".tr,
                variant: ButtonVariant.FillBluegray90002,
                shape: ButtonShape.Square,
                padding: ButtonPadding.PaddingAll15,
                fontStyle: ButtonFontStyle.AsapItalicBold24,
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 10,
                  right: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse588,
                      height: getSize(
                        42.00,
                      ),
                      width: getSize(
                        42.00,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          21.00,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        178.00,
                      ),
                      margin: getMargin(
                        left: 13,
                        bottom: 2,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_david_silbia2".tr,
                              style: TextStyle(
                                color: ColorConstant.pink80001,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Asap',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: " ",
                              style: TextStyle(
                                color: ColorConstant.black90001,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Asap',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_i".tr,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Asap',
                                fontWeight: FontWeight.w400,
                                height: 1.64,
                              ),
                            ),
                            TextSpan(
                              text: "msg_nvite_jo_malone".tr,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Asap',
                                fontWeight: FontWeight.w400,
                                height: 1.64,
                              ),
                            ),
                            TextSpan(
                              text: " ",
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Asap',
                                fontWeight: FontWeight.w500,
                                height: 1.64,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 5,
                        bottom: 23,
                      ),
                      child: Text(
                        "lbl_just_now".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAsapItalicBold12Gray50002,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 68,
                    top: 7,
                  ),
                  child: Row(
                    children: [
                      CustomButton(
                        height: 28,
                        width: 74,
                        text: "lbl_reject".tr,
                        variant: ButtonVariant.OutlineGray20001,
                        fontStyle: ButtonFontStyle.AsapItalicBold14,
                      ),
                      CustomButton(
                        height: 28,
                        width: 74,
                        text: "lbl_accept".tr,
                        margin: getMargin(
                          left: 10,
                        ),
                        fontStyle: ButtonFontStyle.AsapItalicBold14WhiteA700,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 21,
                  right: 12,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.notificationsListModelObj.value
                        .listellipsefiftyeightOneItemList.length,
                    itemBuilder: (context, index) {
                      ListellipsefiftyeightOneItemModel model = controller
                          .notificationsListModelObj
                          .value
                          .listellipsefiftyeightOneItemList[index];
                      return ListellipsefiftyeightOneItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 68,
                    top: 6,
                  ),
                  child: Row(
                    children: [
                      CustomButton(
                        height: 28,
                        width: 74,
                        text: "lbl_reject".tr,
                        variant: ButtonVariant.OutlineGray20001,
                        fontStyle: ButtonFontStyle.AsapItalicBold14,
                      ),
                      CustomButton(
                        height: 28,
                        width: 74,
                        text: "lbl_accept".tr,
                        margin: getMargin(
                          left: 10,
                        ),
                        fontStyle: ButtonFontStyle.AsapItalicBold14WhiteA700,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 21,
                  right: 12,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.notificationsListModelObj.value
                        .listellipsefiftyeightThreeItemList.length,
                    itemBuilder: (context, index) {
                      ListellipsefiftyeightThreeItemModel model = controller
                          .notificationsListModelObj
                          .value
                          .listellipsefiftyeightThreeItemList[index];
                      return ListellipsefiftyeightThreeItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 68,
                    top: 7,
                  ),
                  child: Row(
                    children: [
                      CustomButton(
                        height: 28,
                        width: 74,
                        text: "lbl_reject".tr,
                        variant: ButtonVariant.OutlineGray20001,
                        fontStyle: ButtonFontStyle.AsapItalicBold14,
                      ),
                      CustomButton(
                        height: 28,
                        width: 74,
                        text: "lbl_accept".tr,
                        margin: getMargin(
                          left: 10,
                        ),
                        fontStyle: ButtonFontStyle.AsapItalicBold14WhiteA700,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 21,
                  right: 12,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse581,
                      height: getSize(
                        42.00,
                      ),
                      width: getSize(
                        42.00,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          21.00,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        152.00,
                      ),
                      margin: getMargin(
                        left: 13,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_eric_g_prickett2".tr,
                              style: TextStyle(
                                color: ColorConstant.pink80001,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "\r".tr,
                              style: TextStyle(
                                color: ColorConstant.black90001,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: " ",
                              style: TextStyle(
                                color: ColorConstant.black90001,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "msg_started_following".tr,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Asap',
                                fontWeight: FontWeight.w500,
                                height: 1.64,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 4,
                        bottom: 24,
                      ),
                      child: Text(
                        "lbl_wed_3_30_pm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAsapItalicBold12Bluegray40001,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
