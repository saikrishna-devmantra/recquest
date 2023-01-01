import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      title: "lbl_explore".tr,
      type: BottomBarEnum.Explore,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCalendar,
      title: "lbl_events".tr,
      type: BottomBarEnum.Events,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLocation24x24,
      title: "lbl_map".tr,
      type: BottomBarEnum.Map,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcon,
      title: "lbl_pictures".tr,
      type: BottomBarEnum.Pictures,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser19x19,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.blueGray90002,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
            topRight: Radius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorConstant.black90026,
              spreadRadius: getHorizontalSize(
                2.00,
              ),
              blurRadius: getHorizontalSize(
                2.00,
              ),
              offset: Offset(
                0,
                -4,
              ),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                    color: ColorConstant.whiteA700,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 3,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAsapRomanMedium10WhiteA700.copyWith(
                        color: ColorConstant.whiteA700,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                    color: ColorConstant.pinkA700,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAsapRomanMedium10.copyWith(
                        color: ColorConstant.pinkA700,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Explore,
  Events,
  Map,
  Pictures,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, this.title, required this.type});

  String icon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
