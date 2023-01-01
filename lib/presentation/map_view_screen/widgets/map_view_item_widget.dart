import '../controller/map_view_controller.dart';
import '../models/map_view_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class MapViewItemWidget extends StatelessWidget {
  MapViewItemWidget(this.mapViewItemModelObj);

  MapViewItemModel mapViewItemModelObj;

  var controller = Get.find<MapViewController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: getMargin(
          right: 22,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Container(
          height: getVerticalSize(
            106.00,
          ),
          width: getHorizontalSize(
            332.00,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: getMargin(
                    right: 5,
                  ),
                  padding: getPadding(
                    left: 9,
                    top: 7,
                    right: 9,
                    bottom: 7,
                  ),
                  decoration: AppDecoration.outlineDeeppurple8001f.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.orange20001,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            92.00,
                          ),
                          width: getHorizontalSize(
                            79.00,
                          ),
                          decoration: AppDecoration.fillOrange20001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage8492x79,
                                height: getVerticalSize(
                                  92.00,
                                ),
                                width: getHorizontalSize(
                                  79.00,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: getHorizontalSize(
                    227.00,
                  ),
                  margin: getMargin(
                    top: 8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 19,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Text(
                                "msg_wed_apr_28_5_30".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtArialBoldItalicMT13,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgMap16x16,
                              height: getSize(
                                16.00,
                              ),
                              width: getSize(
                                16.00,
                              ),
                              margin: getMargin(
                                bottom: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          205.00,
                        ),
                        margin: getMargin(
                          top: 5,
                        ),
                        child: Text(
                          "msg_jo_malone_london_s".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtArialBoldItalicMT15,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLocation14x14,
                              height: getSize(
                                14.00,
                              ),
                              width: getSize(
                                14.00,
                              ),
                              margin: getMargin(
                                top: 1,
                              ),
                            ),
                            Text(
                              "msg_radius_gallery".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtArialBoldItalicMT13Gray60001,
                            ),
                          ],
                        ),
                      ),
                    ],
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
