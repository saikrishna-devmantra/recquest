import '../followers_screen/widgets/followers_item_widget.dart';
import 'controller/followers_controller.dart';
import 'models/followers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

class FollowersScreen extends GetWidget<FollowersController> {
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
                  top: 10,
                ),
                child: Text(
                  "lbl_followers".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAsapItalicBold24Pink80001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 9,
                  right: 198,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller
                        .followersModelObj.value.followersItemList.length,
                    itemBuilder: (context, index) {
                      FollowersItemModel model = controller
                          .followersModelObj.value.followersItemList[index];
                      return FollowersItemWidget(
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
