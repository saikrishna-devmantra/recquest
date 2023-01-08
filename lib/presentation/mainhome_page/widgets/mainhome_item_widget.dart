import '../controller/mainhome_controller.dart';
import '../models/mainhome_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class MainhomeItemWidget extends StatelessWidget {
  MainhomeItemWidget(this.mainhomeItemModelObj,
      {this.onTapNameLocation, this.onTapDetails});

  MainhomeItemModel mainhomeItemModelObj;

  var controller = Get.find<MainhomeController>();

  VoidCallback? onTapNameLocation;

  VoidCallback? onTapDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 5.0,
        bottom: 5.0,
      ),
      padding: getPadding(
        left: 8,
        top: 6,
        right: 8,
        bottom: 6,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 1,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage2,
                  height: getSize(
                    35.00,
                  ),
                  width: getSize(
                    35.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      17.00,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onTapNameLocation!();
                  },
                  child: Padding(
                    padding: getPadding(
                      left: 6,
                      top: 6,
                      bottom: 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_david_william".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRomanSemiBold11,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "lbl_3h_los_angeles".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRomanSemiBold7,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(
              230.00,
            ),
            width: getHorizontalSize(
              332.00,
            ),
            margin: getMargin(
              left: 1,
              top: 6,
              bottom: 5,
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      onTapDetails!();
                    },
                    child: Padding(
                      padding: getPadding(
                        left: 12,
                        right: 13,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "internationaasdasl_band",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAsapRomanBold14,
                          ),
                          Text(
                            "lbl_musical".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAsapRomanRegular14Bluegray90002,
                          ),
                          Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLocation8x7,
                                height: getVerticalSize(
                                  8.00,
                                ),
                                width: getHorizontalSize(
                                  7.00,
                                ),
                                margin: getMargin(
                                  top: 4,
                                  bottom: 4,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 3,
                                  top: 5,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "msg_36_guild_street".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtMontserratRomanSemiBold7Bluegray90003,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "lbl_7_00pm".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtAsapRomanMedium14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage77,
                  height: getVerticalSize(
                    175.00,
                  ),
                  width: getHorizontalSize(
                    332.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      15.00,
                    ),
                  ),
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: getHorizontalSize(
                      33.00,
                    ),
                    margin: getMargin(
                      right: 13,
                      bottom: 41,
                    ),
                    padding: getPadding(
                      left: 7,
                      top: 2,
                      right: 7,
                      bottom: 2,
                    ),
                    decoration: AppDecoration.fillPink80004.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            17.00,
                          ),
                          margin: getMargin(
                            top: 1,
                          ),
                          child: Text(
                            "lbl_02_dec".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtAsapItalicBold10.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
