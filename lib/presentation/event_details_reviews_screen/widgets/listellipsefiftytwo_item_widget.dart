import '../controller/event_details_reviews_controller.dart';
import '../models/listellipsefiftytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class ListellipsefiftytwoItemWidget extends StatelessWidget {
  ListellipsefiftytwoItemWidget(this.listellipsefiftytwoItemModelObj);

  ListellipsefiftytwoItemModel listellipsefiftytwoItemModelObj;

  var controller = Get.find<EventDetailsReviewsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 10.649994,
        bottom: 10.649994,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse52,
            height: getSize(
              34.00,
            ),
            width: getSize(
              34.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                17.00,
              ),
            ),
            margin: getMargin(
              top: 2,
              bottom: 92,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  277.00,
                ),
                margin: getMargin(
                  left: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        "msg_rocks_velkeinjen".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAsapItalicBold18.copyWith(
                          height: 1.17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 7,
                      ),
                      child: Text(
                        "lbl_10_feb".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAsapItalicBold15.copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(
                        19.00,
                      ),
                      width: getSize(
                        19.00,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(
                        19.00,
                      ),
                      width: getSize(
                        19.00,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(
                        19.00,
                      ),
                      width: getSize(
                        19.00,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(
                        19.00,
                      ),
                      width: getSize(
                        19.00,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  275.00,
                ),
                margin: getMargin(
                  left: 2,
                  top: 10,
                ),
                child: Text(
                  "msg_cinemas_is_the_ultimate".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAsapItalicMedium15.copyWith(
                    height: 1.67,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
