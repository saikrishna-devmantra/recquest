import 'controller/mainhome_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/presentation/mainhome_page/mainhome_page.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';

class MainhomeContainerScreen extends GetWidget<MainhomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10001,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.mainhomePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

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

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainhomePage:
        return MainhomePage();
      default:
        return DefaultWidget();
    }
  }
}
