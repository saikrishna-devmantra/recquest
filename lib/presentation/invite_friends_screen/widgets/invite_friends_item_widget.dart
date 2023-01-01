import '../controller/invite_friends_controller.dart';
import '../models/invite_friends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class InviteFriendsItemWidget extends StatelessWidget {
  InviteFriendsItemWidget(this.inviteFriendsItemModelObj);

  InviteFriendsItemModel inviteFriendsItemModelObj;

  var controller = Get.find<InviteFriendsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 4.6900005,
        bottom: 4.6900005,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse58,
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
          Padding(
            padding: getPadding(
              left: 9,
              top: 3,
              bottom: 3,
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
                    top: 4,
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
          Spacer(),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              top: 11,
              bottom: 12,
            ),
            color: ColorConstant.pink80001,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Container(
              height: getSize(
                18.00,
              ),
              width: getSize(
                18.00,
              ),
              padding: getPadding(
                left: 4,
                top: 6,
                right: 4,
                bottom: 6,
              ),
              decoration: AppDecoration.fillPink80001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCheckmark6x9,
                    height: getVerticalSize(
                      6.00,
                    ),
                    width: getHorizontalSize(
                      9.00,
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
