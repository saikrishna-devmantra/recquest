import '../controller/event_details_reviews_controller.dart';
import '../models/listcalendar2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listcalendar2ItemWidget extends StatelessWidget {
  Listcalendar2ItemWidget(this.listcalendar2ItemModelObj);

  Listcalendar2ItemModel listcalendar2ItemModelObj;

  var controller = Get.find<EventDetailsReviewsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 8.0,
        right: 55,
        bottom: 8.0,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 35,
            width: 35,
            variant: IconButtonVariant.FillIndigoA20063,
            shape: IconButtonShape.RoundedBorder12,
            padding: IconButtonPadding.PaddingAll6,
            child: CustomImageView(
              svgPath: ImageConstant.imgCalendar35x35,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 4,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_tue_dec_08_2022".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAsapRomanSemiBold11.copyWith(
                    height: 1.18,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "lbl_4_00pm_9_00pm".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAsapRomanMedium12Gray60001,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
