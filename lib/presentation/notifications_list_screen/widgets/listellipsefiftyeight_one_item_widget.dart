import '../controller/notifications_list_controller.dart';
import '../models/listellipsefiftyeight_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class ListellipsefiftyeightOneItemWidget extends StatelessWidget {
  ListellipsefiftyeightOneItemWidget(this.listellipsefiftyeightOneItemModelObj);

  ListellipsefiftyeightOneItemModel listellipsefiftyeightOneItemModelObj;

  var controller = Get.find<NotificationsListController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 5.244999,
        bottom: 5.244999,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
            margin: getMargin(
              bottom: 5,
            ),
          ),
          Container(
            width: getHorizontalSize(
              117.00,
            ),
            margin: getMargin(
              left: 15,
              top: 4,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_adnan_safi".tr,
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
                    text: "msg_started_following".tr,
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
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 5,
              bottom: 28,
            ),
            child: Text(
              "lbl_5_min_ago".tr,
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
