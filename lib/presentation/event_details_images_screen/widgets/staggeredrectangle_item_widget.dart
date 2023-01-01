import '../controller/event_details_images_controller.dart';
import '../models/staggeredrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class StaggeredrectangleItemWidget extends StatelessWidget {
  StaggeredrectangleItemWidget(this.staggeredrectangleItemModelObj,
      {this.onTapImgRectangle});

  StaggeredrectangleItemModel staggeredrectangleItemModelObj;

  var controller = Get.find<EventDetailsImagesController>();

  VoidCallback? onTapImgRectangle;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle8,
      height: getVerticalSize(
        114.00,
      ),
      width: getHorizontalSize(
        200.00,
      ),
      onTap: () {
        onTapImgRectangle!();
      },
    );
  }
}
