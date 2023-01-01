import '../controller/events_controller.dart';
import '../models/events_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class EventsItemWidget extends StatelessWidget {
  EventsItemWidget(this.eventsItemModelObj, {this.onTapEvent});

  EventsItemModel eventsItemModelObj;

  var controller = Get.find<EventsController>();

  VoidCallback? onTapEvent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEvent!();
      },
      child: Container(
        margin: getMargin(
          top: 5.0,
          bottom: 5.0,
        ),
        padding: getPadding(
          left: 7,
          top: 6,
          right: 7,
          bottom: 6,
        ),
        decoration: AppDecoration.outlineBluegray6000f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage84,
              height: getVerticalSize(
                80.00,
              ),
              width: getHorizontalSize(
                69.00,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 11,
                top: 7,
                right: 33,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_wed_apr_28_5_30".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAsapItalicBold13,
                  ),
                  Container(
                    width: getHorizontalSize(
                      222.00,
                    ),
                    margin: getMargin(
                      top: 1,
                    ),
                    child: Text(
                      "msg_jo_malone_london_s".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAsapRomanBold15,
                    ),
                  ),
                  Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgLocation12x12,
                        height: getSize(
                          12.00,
                        ),
                        width: getSize(
                          12.00,
                        ),
                        margin: getMargin(
                          bottom: 2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 5,
                        ),
                        child: Text(
                          "msg_radius_gallery".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAsapItalicBold13Gray60001,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
