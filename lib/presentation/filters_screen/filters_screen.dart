import 'controller/filters_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/custom_button.dart';
import 'package:recquest_21/widgets/custom_icon_button.dart';

class FiltersScreen extends GetWidget<FiltersController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 13,
            right: 13,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Text(
                  "lbl_filter".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAsapItalicBold25,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 58,
                          width: 58,
                          variant: IconButtonVariant.FillPink80001,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgGlobe58x58,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            23.00,
                          ),
                          child: Text(
                            "lbl_sports".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtAsapItalicBold14.copyWith(
                              height: 1.64,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 58,
                          width: 58,
                          variant: IconButtonVariant.OutlineGray30001,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgMusic58x58,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            30.00,
                          ),
                          child: Text(
                            "lbl_music".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtAsapItalicBold14.copyWith(
                              height: 1.64,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 58,
                          width: 58,
                          variant: IconButtonVariant.FillPink80001,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgShare,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            17.00,
                          ),
                          child: Text(
                            "lbl_art".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtAsapItalicBold14.copyWith(
                              height: 1.64,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 58,
                          width: 58,
                          variant: IconButtonVariant.OutlineGray30001,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgCar58x58,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            23.00,
                          ),
                          child: Text(
                            "lbl_food".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtAsapItalicBold14.copyWith(
                              height: 1.64,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 58,
                          width: 58,
                          variant: IconButtonVariant.OutlineGray30001,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgCar58x58,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            23.00,
                          ),
                          child: Text(
                            "lbl_food".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtAsapItalicBold14.copyWith(
                              height: 1.64,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: getHorizontalSize(
                    49.00,
                  ),
                  margin: getMargin(
                    left: 19,
                  ),
                  child: Text(
                    "lbl_time_date".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAsapItalicBold16.copyWith(
                      height: 2.13,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 19,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: getHorizontalSize(
                          71.00,
                        ),
                        padding: getPadding(
                          left: 14,
                          top: 7,
                          right: 14,
                          bottom: 7,
                        ),
                        decoration: AppDecoration.txtOutlineGray30002.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder10,
                        ),
                        child: Text(
                          "lbl_today".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAsapItalicBold15Gray60003.copyWith(
                            height: 1.20,
                          ),
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          96.00,
                        ),
                        margin: getMargin(
                          left: 10,
                        ),
                        padding: getPadding(
                          left: 13,
                          top: 8,
                          right: 13,
                          bottom: 8,
                        ),
                        decoration: AppDecoration.txtFillPink80001.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder10,
                        ),
                        child: Text(
                          "lbl_tomorrow".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAsapItalicBold15WhiteA700.copyWith(
                            height: 1.20,
                          ),
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          94.00,
                        ),
                        margin: getMargin(
                          left: 10,
                        ),
                        padding: getPadding(
                          left: 13,
                          top: 9,
                          right: 13,
                          bottom: 9,
                        ),
                        decoration: AppDecoration.txtOutlineGray30002.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder10,
                        ),
                        child: Text(
                          "lbl_this_week".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAsapItalicBold15Gray60003.copyWith(
                            height: 1.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 19,
                  top: 14,
                  right: 18,
                ),
                padding: getPadding(
                  left: 12,
                  top: 7,
                  right: 12,
                  bottom: 7,
                ),
                decoration: AppDecoration.outlineGray30002.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCalendar20x18,
                      height: getVerticalSize(
                        20.00,
                      ),
                      width: getHorizontalSize(
                        18.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                        top: 1,
                        bottom: 1,
                      ),
                      child: Text(
                        "msg_choose_from_calender".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAsapItalicBold15Gray60003.copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightPink80001,
                      height: getVerticalSize(
                        7.00,
                      ),
                      width: getHorizontalSize(
                        3.00,
                      ),
                      margin: getMargin(
                        left: 105,
                        top: 7,
                        right: 3,
                        bottom: 6,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      height: 46,
                      width: 138,
                      text: "lbl_reset".tr.toUpperCase(),
                      variant: ButtonVariant.OutlineGray30001,
                      shape: ButtonShape.RoundedBorder10,
                      padding: ButtonPadding.PaddingAll15,
                      fontStyle: ButtonFontStyle.AsapItalicBold16,
                    ),
                    Container(
                      height: getVerticalSize(
                        46.00,
                      ),
                      width: getHorizontalSize(
                        138.00,
                      ),
                      margin: getMargin(
                        left: 13,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgRectanglePink80001,
                            height: getVerticalSize(
                              46.00,
                            ),
                            width: getHorizontalSize(
                              138.00,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_apply".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAsapItalicBold16WhiteA700
                                  .copyWith(
                                letterSpacing: 1.00,
                              ),
                            ),
                          ),
                        ],
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
