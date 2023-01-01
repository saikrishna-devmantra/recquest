import '../controller/organizer_profile_images_controller.dart';
import '../models/staggeredrectangle_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class StaggeredrectangleOneItemWidget extends StatelessWidget {
  StaggeredrectangleOneItemWidget(this.staggeredrectangleOneItemModelObj);

  StaggeredrectangleOneItemModel staggeredrectangleOneItemModelObj;

  var controller = Get.find<OrganizerProfileImagesController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle8,
      height: getVerticalSize(
        123.00,
      ),
      width: getHorizontalSize(
        200.00,
      ),
    );
  }
}
