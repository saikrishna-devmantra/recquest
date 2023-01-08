import 'package:recquest_21/presentation/events_screen/events_screen.dart';
import 'package:recquest_21/presentation/map_view_screen/map_view_screen.dart';
import 'package:recquest_21/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:recquest_21/presentation/pictures_screen/pictures_screen.dart';

import 'controller/create_events_controller.dart';
import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';
import 'package:recquest_21/core/utils/validation_functions.dart';
import 'package:recquest_21/presentation/mainhome_page/mainhome_page.dart';
import 'package:recquest_21/widgets/app_bar/appbar_circleimage.dart';
import 'package:recquest_21/widgets/app_bar/custom_app_bar.dart';
import 'package:recquest_21/widgets/custom_bottom_bar.dart';
import 'package:recquest_21/widgets/custom_text_form_field.dart';

class CreateEventsScreen extends GetWidget<CreateEventsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10001,
        appBar: CustomAppBar(
          height: getVerticalSize(
            60.00,
          ),
          leadingWidth: 59,
          leading: AppbarCircleimage(
            imagePath: ImageConstant.imgOvalcopy5,
            margin: getMargin(
              left: 19,
              top: 10,
              bottom: 10,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 20,
            ),
            child: Text(
              "lbl_new_event".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtAsapItalicBold24Pink80001,
            ),
          ),
          styleType: Style.bgFillBluegray90002,
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              margin: getMargin(
                top: 9,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 16,
                    ),
                    child: Text(
                      "lbl_event_name".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium14Black90099,
                    ),
                  ),
                  CustomTextFormField(
                    width: 350,
                    focusNode: FocusNode(),
                    controller: controller.groupFiftyThreeController,
                    hintText: "lbl_event_name".tr,
                    margin: getMargin(
                      top: 10,
                    ),
                    shape: TextFormFieldShape.RoundedBorder6,
                    alignment: Alignment.center,
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 13,
                        right: 17,
                        bottom: 13,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            6.00,
                          ),
                        ),
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCheckmark26x24,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(
                        25.00,
                      ),
                      minHeight: getVerticalSize(
                        26.00,
                      ),
                    ),
                    validator: (value) {
                      if (!isText(value)) {
                        return "Please enter valid text";
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 9,
                    ),
                    child: Text(
                      "lbl_event_location".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium14Black90099,
                    ),
                  ),
                  CustomTextFormField(
                    width: 350,
                    focusNode: FocusNode(),
                    controller: controller.groupFiftyFourController,
                    hintText: "lbl_event_location".tr,
                    margin: getMargin(
                      top: 10,
                    ),
                    shape: TextFormFieldShape.RoundedBorder6,
                    alignment: Alignment.center,
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 13,
                        right: 17,
                        bottom: 13,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            6.00,
                          ),
                        ),
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCheckmark26x24,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(
                        25.00,
                      ),
                      minHeight: getVerticalSize(
                        26.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 9,
                    ),
                    child: Text(
                      "msg_event_date_time".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium14Black90099,
                    ),
                  ),
                  CustomTextFormField(
                    width: 350,
                    focusNode: FocusNode(),
                    controller: controller.groupFiftyFiveController,
                    hintText: "msg_event_date_time".tr,
                    margin: getMargin(
                      top: 10,
                    ),
                    shape: TextFormFieldShape.RoundedBorder6,
                    alignment: Alignment.center,
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 13,
                        right: 17,
                        bottom: 13,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            6.00,
                          ),
                        ),
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCheckmark26x24,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      minWidth: getHorizontalSize(
                        25.00,
                      ),
                      minHeight: getVerticalSize(
                        26.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 9,
                    ),
                    child: Text(
                      "lbl_about".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium14Black90099,
                    ),
                  ),
                  CustomTextFormField(
                    width: 350,
                    focusNode: FocusNode(),
                    controller: controller.inputController,
                    hintText: "msg_label_text_area".tr,
                    margin: getMargin(
                      top: 10,
                    ),
                    variant: TextFormFieldVariant.OutlineBluegray90019,
                    shape: TextFormFieldShape.RoundedBorder6,
                    padding: TextFormFieldPadding.PaddingT14,
                    fontStyle:
                        TextFormFieldFontStyle.AsapRomanRegular14Bluegray900b2,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    maxLines: 10,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 9,
                    ),
                    child: Text(
                      "lbl_select_image_s".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium14Black90099,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        133.00,
                      ),
                      width: getHorizontalSize(
                        350.00,
                      ),
                      margin: getMargin(
                        top: 10,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray10002,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            10.00,
                          ),
                        ),
                        border: Border.all(
                          color: ColorConstant.cyan900,
                          width: getHorizontalSize(
                            0.50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width,
                    margin: getMargin(
                      top: 65,
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
      ),
    );
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
