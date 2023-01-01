import '../controller/followers_controller.dart';
import '../models/followers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class FollowersItemWidget extends StatelessWidget {
  FollowersItemWidget(this.followersItemModelObj);

  FollowersItemModel followersItemModelObj;

  var controller = Get.find<FollowersController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 5.0,
        right: 40,
        bottom: 5.0,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse58,
            height: getSize(
              45.00,
            ),
            width: getSize(
              45.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                22.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 3,
              bottom: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_alex_lee".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAsapItalicBold14,
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    "lbl_2k_follwers".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAsapItalicBold13Gray60001,
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
