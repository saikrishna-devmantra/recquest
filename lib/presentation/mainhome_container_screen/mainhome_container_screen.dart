import 'package:recquest_21/presentation/events_screen/events_screen.dart';
import 'package:recquest_21/presentation/map_view_screen/map_view_screen.dart';
import 'package:recquest_21/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:recquest_21/presentation/pictures_screen/pictures_screen.dart';

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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Explore:
        return AppRoutes.mainhomePage;
      case BottomBarEnum.Events:
        return AppRoutes.eventsScreen;
      case BottomBarEnum.Map:
        return AppRoutes.mapViewScreen;
      case BottomBarEnum.Pictures:
        return AppRoutes.picturesScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.myProfileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainhomePage:
        return MainhomePage();
      case AppRoutes.eventsScreen:
        return EventsScreen();
      case AppRoutes.mapViewScreen:
        return MapViewScreen();
      case AppRoutes.picturesScreen:
        return PicturesScreen();
      case AppRoutes.myProfileScreen:
        return MyProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}
