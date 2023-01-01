import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      case IconButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case IconButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillIndigoA20063:
        return ColorConstant.indigoA20063;
      case IconButtonVariant.FillIndigoA20065:
        return ColorConstant.indigoA20065;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillPink80001:
        return ColorConstant.pink80001;
      case IconButtonVariant.OutlineGray30001:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineLightblue50033:
      case IconButtonVariant.OutlineBlue70033:
      case IconButtonVariant.OutlineGreenA70033:
        return null;
      default:
        return ColorConstant.blueGray80001;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineGray30001:
        return Border.all(
          color: ColorConstant.gray30001,
          width: getHorizontalSize(
            0.87,
          ),
        );
      case IconButtonVariant.FillBluegray80001:
      case IconButtonVariant.FillIndigoA20063:
      case IconButtonVariant.FillIndigoA20065:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.OutlineLightblue50033:
      case IconButtonVariant.OutlineBlue70033:
      case IconButtonVariant.OutlineGreenA70033:
      case IconButtonVariant.FillPink80001:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case IconButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.OutlineLightblue50033:
        return LinearGradient(
          begin: Alignment(
            0.11,
            0.19,
          ),
          end: Alignment(
            0.86,
            0.82,
          ),
          colors: [
            ColorConstant.blueA400,
            ColorConstant.lightBlueA400,
          ],
        );
      case IconButtonVariant.OutlineBlue70033:
        return LinearGradient(
          begin: Alignment(
            0.11,
            0.19,
          ),
          end: Alignment(
            0.86,
            0.82,
          ),
          colors: [
            ColorConstant.cyan300,
            ColorConstant.blue800,
          ],
        );
      case IconButtonVariant.OutlineGreenA70033:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.greenA200,
            ColorConstant.greenA700,
          ],
        );
      case IconButtonVariant.FillBluegray80001:
      case IconButtonVariant.FillIndigoA20063:
      case IconButtonVariant.FillIndigoA20065:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillPink80001:
      case IconButtonVariant.OutlineGray30001:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineLightblue50033:
        return [
          BoxShadow(
            color: ColorConstant.lightBlue50033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              6,
            ),
          )
        ];
      case IconButtonVariant.OutlineBlue70033:
        return [
          BoxShadow(
            color: ColorConstant.blue70033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              6,
            ),
          )
        ];
      case IconButtonVariant.OutlineGreenA70033:
        return [
          BoxShadow(
            color: ColorConstant.greenA70033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              6,
            ),
          )
        ];
      case IconButtonVariant.FillBluegray80001:
      case IconButtonVariant.FillIndigoA20063:
      case IconButtonVariant.FillIndigoA20065:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillPink80001:
      case IconButtonVariant.OutlineGray30001:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder30,
  RoundedBorder12,
  CircleBorder15,
}

enum IconButtonPadding {
  PaddingAll12,
  PaddingAll15,
  PaddingAll6,
  PaddingAll9,
}

enum IconButtonVariant {
  FillBluegray80001,
  FillIndigoA20063,
  FillIndigoA20065,
  FillWhiteA700,
  OutlineLightblue50033,
  OutlineBlue70033,
  OutlineGreenA70033,
  FillPink80001,
  OutlineGray30001,
}
