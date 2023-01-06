import 'controller/photo_open_overlay_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/app_bar/custom_app_bar.dart';

class PhotoOpenOverlayScreen extends GetWidget<PhotoOpenOverlayController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgPhotoopenoverlay,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  margin: getMargin(
                    bottom: 5,
                  ),
                  padding: getPadding(
                    top: 44,
                    bottom: 44,
                  ),
                  decoration: AppDecoration.gradientBlack900Gray40000,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
                          56.00,
                        ),
                        leadingWidth: 44,
                        leading: CustomImageView(
                          imagePath: ImageConstant.imgEllipse,
                          height: getSize(
                            28.00,
                          ),
                          width: getSize(
                            28.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              14.00,
                            ),
                          ),
                          margin: getMargin(
                            left: 16,
                          ),
                        ),
                        title: Padding(
                          padding: getPadding(
                            left: 8,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "lbl_ridhwan_nordin".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold18,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    right: 44,
                                  ),
                                  child: Text(
                                    "lbl_ridzjcob".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgClose32x32,
                        height: getSize(
                          32.00,
                        ),
                        width: getSize(
                          32.00,
                        ),
                        margin: getMargin(
                          right: 14,
                          bottom: 180,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
