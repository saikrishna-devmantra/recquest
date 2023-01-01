import '../controller/events_controller.dart';
import '../models/events_item_model.dart';
import '../models/events_screen_item_model.dart';
import '../widgets/events_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/app_bar/appbar_circleimage.dart';
import 'package:recquest_21/widgets/app_bar/appbar_image.dart';
import 'package:recquest_21/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:recquest_21/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:recquest_21/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class EventsItemWidget extends StatelessWidget {
  EventsItemWidget(this.eventsItemModelObj);

  EventsItemModel eventsItemModelObj;

  var controller = Get.find<EventsController>();

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      height: getVerticalSize(
        60.00,
      ),
      leadingWidth: 51,
      leading: AppbarCircleimage(
        imagePath: ImageConstant.imgOvalcopy5,
        margin: getMargin(
          left: 11,
          top: 10,
          bottom: 10,
        ),
        onTap: onTapOvalCopyFive1,
      ),
      title: Row(
        children: [
          Padding(
            padding: getPadding(
              left: 59,
              top: 12,
              bottom: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarSubtitle3(
                  text: "msg_current_location".tr,
                  margin: getMargin(
                    right: 1,
                  ),
                ),
                AppbarSubtitle2(
                  text: "lbl_new_yourk_usa".tr,
                ),
              ],
            ),
          ),
          AppbarImage(
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            svgPath: ImageConstant.imgFloatingicon,
            margin: getMargin(
              left: 58,
              top: 10,
              bottom: 10,
            ),
            onTap: onTapFloatingicon1,
          ),
        ],
      ),
      actions: [
        AppbarImage(
          height: getVerticalSize(
            24.00,
          ),
          width: getHorizontalSize(
            26.00,
          ),
          svgPath: ImageConstant.imgContrast24x26,
          margin: getMargin(
            left: 12,
            top: 18,
            right: 12,
            bottom: 18,
          ),
          onTap: onTapContrast1,
        ),
      ],
      styleType: Style.bgFillBluegray90002,
      itemCount: eventsItemModelObj.eventsScreenItemList.length,
      itemBuilder: (context, index) {
        EventsScreenItemModel model =
            eventsItemModelObj.eventsScreenItemList[index];
        return EventsScreenItemWidget(
          model,
          onTapImgOvalCopyFive: onTapImgOvalCopyFive,
        );
      },
    );
  }
}
