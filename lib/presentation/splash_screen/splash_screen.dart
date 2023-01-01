import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: GestureDetector(
                onTap: () {
                  onTapSPLASH();
                },
                child: Container(
                    width: size.width,
                    padding: getPadding(left: 20, right: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: getSize(49.00),
                                  width: getSize(49.00),
                                  margin: getMargin(right: 45),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.pink90033,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(24.00))))),
                          Container(
                              height: getSize(31.00),
                              width: getSize(31.00),
                              margin: getMargin(left: 63, top: 29),
                              decoration: BoxDecoration(
                                  color: ColorConstant.pink90033,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(15.00)))),
                          Container(
                              height: getSize(49.00),
                              width: getSize(49.00),
                              margin: getMargin(top: 69),
                              decoration: BoxDecoration(
                                  color: ColorConstant.pink90033,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(24.00)))),
                          CustomImageView(
                              imagePath: ImageConstant.imgLogo,
                              height: getVerticalSize(79.00),
                              width: getHorizontalSize(263.00),
                              alignment: Alignment.center,
                              margin: getMargin(top: 19)),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: getSize(49.00),
                                  width: getSize(49.00),
                                  margin: getMargin(top: 6, right: 45),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.pink90033,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(24.00))))),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: getSize(31.00),
                                  width: getSize(31.00),
                                  margin: getMargin(top: 46, right: 31),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.pink90033,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(15.00))))),
                          Container(
                              height: getSize(31.00),
                              width: getSize(31.00),
                              margin: getMargin(left: 63, top: 82),
                              decoration: BoxDecoration(
                                  color: ColorConstant.pink90033,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(15.00))))
                        ])))));
  }

  onTapSPLASH() {
    Get.toNamed(AppRoutes.onboardingOneScreen);
  }
}
