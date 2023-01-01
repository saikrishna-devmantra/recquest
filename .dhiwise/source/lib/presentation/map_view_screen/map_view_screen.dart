import '../map_view_screen/widgets/map_view_item_widget.dart';
import 'controller/map_view_controller.dart';
import 'models/map_view_item_model.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/mainhome_page/mainhome_page.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';
import 'package:recquest_21/widgets/custom_floating_button.dart';

class MapViewScreen extends GetWidget<MapViewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10001,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgHeader,
                    height: getVerticalSize(
                      19.00,
                    ),
                    width: getHorizontalSize(
                      375.00,
                    ),
                  ),
                  Container(
                    width: size.width,
                    padding: getPadding(
                      left: 12,
                      top: 13,
                      right: 12,
                      bottom: 13,
                    ),
                    decoration: AppDecoration.fillBluegray90002,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            88.00,
                          ),
                          padding: getPadding(
                            top: 4,
                            bottom: 4,
                          ),
                          decoration:
                              AppDecoration.outlineBluegray2004c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgGlobe,
                                height: getSize(
                                  19.00,
                                ),
                                width: getSize(
                                  19.00,
                                ),
                                margin: getMargin(
                                  top: 2,
                                  bottom: 1,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "lbl_sports".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtArialBoldItalicMT1661
                                      .copyWith(
                                    height: 1.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: getPadding(
                            left: 6,
                            top: 5,
                            right: 6,
                            bottom: 5,
                          ),
                          decoration:
                              AppDecoration.outlineBluegray2004c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgMusic19x18,
                                height: getVerticalSize(
                                  19.00,
                                ),
                                width: getHorizontalSize(
                                  18.00,
                                ),
                                margin: getMargin(
                                  top: 1,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 1,
                                ),
                                child: Text(
                                  "lbl_music".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtArialBoldItalicMT1661
                                      .copyWith(
                                    height: 1.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: getPadding(
                            all: 5,
                          ),
                          decoration:
                              AppDecoration.outlineBluegray2004c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCar19x19,
                                height: getSize(
                                  19.00,
                                ),
                                width: getSize(
                                  19.00,
                                ),
                                margin: getMargin(
                                  top: 1,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 1,
                                ),
                                child: Text(
                                  "lbl_food".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtArialBoldItalicMT1661
                                      .copyWith(
                                    height: 1.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: getPadding(
                            all: 5,
                          ),
                          decoration:
                              AppDecoration.outlineBluegray2004c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgFire19x19,
                                height: getSize(
                                  19.00,
                                ),
                                width: getSize(
                                  19.00,
                                ),
                                margin: getMargin(
                                  top: 1,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 1,
                                ),
                                child: Text(
                                  "lbl_food".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtArialBoldItalicMT1661
                                      .copyWith(
                                    height: 1.20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    decoration: AppDecoration.fillGray50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(
                            618.00,
                          ),
                          width: size.width,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage23,
                                height: getVerticalSize(
                                  618.00,
                                ),
                                width: getHorizontalSize(
                                  375.00,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: size.width,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          181.00,
                                        ),
                                        width: size.width,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment(
                                              0.5,
                                              0,
                                            ),
                                            end: Alignment(
                                              0.5,
                                              1,
                                            ),
                                            colors: [
                                              ColorConstant.whiteA70081,
                                              ColorConstant.whiteA70081,
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgVolume54x48,
                                        height: getVerticalSize(
                                          54.00,
                                        ),
                                        width: getHorizontalSize(
                                          48.00,
                                        ),
                                        alignment: Alignment.centerRight,
                                        margin: getMargin(
                                          top: 40,
                                          right: 68,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgVolume1,
                                        height: getVerticalSize(
                                          54.00,
                                        ),
                                        width: getHorizontalSize(
                                          48.00,
                                        ),
                                        margin: getMargin(
                                          left: 92,
                                          top: 30,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgReply54x48,
                                        height: getVerticalSize(
                                          54.00,
                                        ),
                                        width: getHorizontalSize(
                                          48.00,
                                        ),
                                        alignment: Alignment.centerRight,
                                        margin: getMargin(
                                          top: 26,
                                          right: 32,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgVolume2,
                                        height: getVerticalSize(
                                          54.00,
                                        ),
                                        width: getHorizontalSize(
                                          48.00,
                                        ),
                                        margin: getMargin(
                                          left: 141,
                                          top: 36,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: size.width,
                          margin: getMargin(
                            top: 13,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(
                                0.5,
                                0,
                              ),
                              end: Alignment(
                                0.5,
                                1,
                              ),
                              colors: [
                                ColorConstant.whiteA70081,
                                ColorConstant.whiteA70081,
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            112.00,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              padding: getPadding(
                                top: 111,
                              ),
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: controller
                                  .mapViewModelObj.value.mapViewItemList.length,
                              itemBuilder: (context, index) {
                                MapViewItemModel model = controller
                                    .mapViewModelObj
                                    .value
                                    .mapViewItemList[index];
                                return MapViewItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          margin: getMargin(
                            top: 289,
                          ),
                          padding: getPadding(
                            left: 124,
                            right: 124,
                          ),
                          decoration: AppDecoration.fillPink80004,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  1.00,
                                ),
                                width: getHorizontalSize(
                                  72.00,
                                ),
                                margin: getMargin(
                                  top: 13,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    margin: getMargin(
                      top: 60,
                    ),
                    padding: getPadding(
                      left: 151,
                      top: 4,
                      right: 151,
                      bottom: 4,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: getVerticalSize(
                            2.00,
                          ),
                          width: getHorizontalSize(
                            72.00,
                          ),
                          margin: getMargin(
                            top: 4,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray9007f,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
        floatingActionButton: CustomFloatingButton(
          height: 51,
          width: 51,
          child: CustomImageView(
            svgPath: ImageConstant.imgMenu51x51,
            height: getVerticalSize(
              25.50,
            ),
            width: getHorizontalSize(
              25.50,
            ),
          ),
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Explore:
        return AppRoutes.mainhomePage;
      case BottomBarEnum.Events:
        return "/";
      case BottomBarEnum.Map:
        return "/";
      case BottomBarEnum.Pictures:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainhomePage:
        return MainhomePage();
      default:
        return DefaultWidget();
    }
  }
}
