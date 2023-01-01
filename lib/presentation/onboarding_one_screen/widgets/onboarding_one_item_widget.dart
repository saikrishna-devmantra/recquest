import '../controller/onboarding_one_controller.dart';
import '../models/onboarding_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class OnboardingOneItemWidget extends StatelessWidget {
  OnboardingOneItemWidget(this.onboardingOneItemModelObj);

  OnboardingOneItemModel onboardingOneItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 4.199997,
        right: 1,
        bottom: 4.199997,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getSize(
              4.00,
            ),
            width: getSize(
              4.00,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.purple300,
            ),
          ),
          Container(
            height: getSize(
              4.00,
            ),
            width: getSize(
              4.00,
            ),
            margin: getMargin(
              left: 8,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.purple300,
            ),
          ),
          Container(
            height: getSize(
              4.00,
            ),
            width: getSize(
              4.00,
            ),
            margin: getMargin(
              left: 7,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.purple300,
            ),
          ),
          Container(
            height: getSize(
              4.00,
            ),
            width: getSize(
              4.00,
            ),
            margin: getMargin(
              left: 8,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.purple300,
            ),
          ),
        ],
      ),
    );
  }
}
