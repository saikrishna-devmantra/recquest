import 'controller/notifications_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/custom_button.dart';

class NotificationsEmptyScreen extends GetWidget<NotificationsEmptyController> {
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
              CustomImageView(
                svgPath: ImageConstant.imgArtwork,
                height: getVerticalSize(
                  169.00,
                ),
                width: getHorizontalSize(
                  155.00,
                ),
                margin: getMargin(
                  top: 138,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 46,
                ),
                child: Text(
                  "msg_no_notifications".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAsapItalicBold18.copyWith(
                    height: 1.17,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  283.00,
                ),
                margin: getMargin(
                  top: 18,
                  bottom: 5,
                ),
                child: Text(
                  "msg_lorem_ipsum_dolor".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtAsapItalicRegular16.copyWith(
                    height: 1.75,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
