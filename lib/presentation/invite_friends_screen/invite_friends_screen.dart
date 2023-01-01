import '../invite_friends_screen/widgets/invite_friends_item_widget.dart';
import 'controller/invite_friends_controller.dart';
import 'models/invite_friends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/widgets/custom_button.dart';
import 'package:recquest_21/widgets/custom_icon_button.dart';
import 'package:recquest_21/widgets/custom_search_view.dart';

class InviteFriendsScreen extends GetWidget<InviteFriendsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10001,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                height: 60,
                width: 375,
                text: "lbl_invite_friend".tr,
                variant: ButtonVariant.FillBluegray90002,
                shape: ButtonShape.Square,
                padding: ButtonPadding.PaddingAll15,
                fontStyle: ButtonFontStyle.AsapItalicBold24,
              ),
              Container(
                width: size.width,
                padding: getPadding(
                  left: 12,
                  top: 5,
                  right: 12,
                  bottom: 5,
                ),
                decoration: AppDecoration.fillBluegray90002,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomSearchView(
                      width: 350,
                      focusNode: FocusNode(),
                      controller: controller.searchController,
                      hintText: "lbl_search2".tr,
                      suffix: Padding(
                        padding: EdgeInsets.only(
                          right: getHorizontalSize(
                            15.00,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            controller.searchController.clear;
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        minWidth: getHorizontalSize(
                          20.00,
                        ),
                        minHeight: getVerticalSize(
                          20.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 11,
                  top: 10,
                  right: 13,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.inviteFriendsModelObj.value
                        .inviteFriendsItemList.length,
                    itemBuilder: (context, index) {
                      InviteFriendsItemModel model = controller
                          .inviteFriendsModelObj
                          .value
                          .inviteFriendsItemList[index];
                      return InviteFriendsItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 9,
                  bottom: 5,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Container(
                  height: getVerticalSize(
                    50.00,
                  ),
                  width: getHorizontalSize(
                    300.00,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: getPadding(
                            left: 14,
                            top: 10,
                            right: 14,
                            bottom: 10,
                          ),
                          decoration: AppDecoration.fillPink80001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 30,
                                width: 30,
                                variant: IconButtonVariant.FillWhiteA700,
                                shape: IconButtonShape.CircleBorder15,
                                padding: IconButtonPadding.PaddingAll6,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_invite".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAsapRomanBold16.copyWith(
                            letterSpacing: 1.00,
                          ),
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
