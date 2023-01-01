import '../following_screen/widgets/following_item_widget.dart';
import 'controller/following_controller.dart';
import 'models/following_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

class FollowingScreen extends GetWidget<FollowingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10001,
        body: Container(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  19.00,
                ),
                width: size.width,
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 12,
                ),
                child: Text(
                  "lbl_following".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAsapItalicBold24Pink80001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 7,
                  right: 198,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller
                        .followingModelObj.value.followingItemList.length,
                    itemBuilder: (context, index) {
                      FollowingItemModel model = controller
                          .followingModelObj.value.followingItemList[index];
                      return FollowingItemWidget(
                        model,
                      );
                    },
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
