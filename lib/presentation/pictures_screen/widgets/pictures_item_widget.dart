import '../controller/pictures_controller.dart';
import '../models/pictures_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class PicturesItemWidget extends StatelessWidget {
  PicturesItemWidget(this.picturesItemModelObj, {this.onTapImgRectangle});

  PicturesItemModel picturesItemModelObj;

  var controller = Get.find<PicturesController>();

  VoidCallback? onTapImgRectangle;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle8,
      height: getVerticalSize(
        140.00,
      ),
      width: getHorizontalSize(
        196.00,
      ),
      onTap: () {
        onTapImgRectangle!();
      },
    );
  }
}
