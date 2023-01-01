import '../controller/events_controller.dart';
import '../models/events_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class EventsScreenItemWidget extends StatelessWidget {
  EventsScreenItemWidget(this.eventsScreenItemModelObj,
      {this.onTapImgOvalCopyFive});

  EventsScreenItemModel eventsScreenItemModelObj;

  var controller = Get.find<EventsController>();

  VoidCallback? onTapImgOvalCopyFive;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgOvalcopy5,
      height: getSize(
        40.00,
      ),
      width: getSize(
        40.00,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          20.00,
        ),
      ),
      margin: getMargin(
        left: 11,
        top: 10,
        bottom: 10,
      ),
      onTap: () {
        onTapImgOvalCopyFive!();
      },
    );
  }
}
