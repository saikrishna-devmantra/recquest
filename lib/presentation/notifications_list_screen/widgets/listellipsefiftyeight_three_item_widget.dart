import '../controller/notifications_list_controller.dart';
import '../models/listellipsefiftyeight_three_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class ListellipsefiftyeightThreeItemWidget extends StatelessWidget {
  ListellipsefiftyeightThreeItemWidget(
      this.listellipsefiftyeightThreeItemModelObj);

  ListellipsefiftyeightThreeItemModel listellipsefiftyeightThreeItemModelObj;

  var controller = Get.find<NotificationsListController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 8.034992,
        bottom: 8.034992,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse582,
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
              150.00,
            ),
            margin: getMargin(
              left: 13,
              bottom: 2,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_ronald_c_kinch".tr,
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
                    text: "lbl_like_you_events".tr,
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
              "lbl_1_hr_ago".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtAsapItalicBold12Gray50002,
            ),
          ),
        ],
      ),
    );
  }
}
