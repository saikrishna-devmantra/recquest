import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        getHorizontalSize(width ?? 0),
        getVerticalSize(height ?? 0),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      case ButtonPadding.PaddingT7:
        return getPadding(
          top: 7,
          right: 7,
          bottom: 7,
        );
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case ButtonPadding.PaddingT11:
        return getPadding(
          top: 11,
          right: 11,
          bottom: 11,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineCyan30014:
        return ColorConstant.whiteA70065;
      case ButtonVariant.OutlineCyan30014_1:
        return ColorConstant.pink80004;
      case ButtonVariant.OutlineGray300:
        return ColorConstant.gray10002;
      case ButtonVariant.FillBluegray90002:
        return ColorConstant.blueGray90002;
      case ButtonVariant.OutlineBlack90019:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray30001:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineCyan30014_2:
        return ColorConstant.indigoA20063;
      case ButtonVariant.FillTealA400:
        return ColorConstant.tealA400;
      case ButtonVariant.OutlineWhiteA700:
        return ColorConstant.pink80001;
      case ButtonVariant.OutlineGray20001:
      case ButtonVariant.OutlinePink80001:
        return null;
      default:
        return ColorConstant.pink80001;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray300:
        return BorderSide(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray20001:
        return BorderSide(
          color: ColorConstant.gray20001,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray30001:
        return BorderSide(
          color: ColorConstant.gray30001,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA700:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.50,
          ),
        );
      case ButtonVariant.OutlinePink80001:
        return BorderSide(
          color: ColorConstant.pink80001,
          width: getHorizontalSize(
            1.50,
          ),
        );
      default:
        return null;
        ;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineCyan30014:
        return ColorConstant.cyan30014;
      case ButtonVariant.OutlineCyan30014_1:
        return ColorConstant.cyan30014;
      case ButtonVariant.OutlineBlack90019:
        return ColorConstant.black90019;
      case ButtonVariant.OutlineCyan30014_2:
        return ColorConstant.cyan30014;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      case ButtonShape.CustomBorderTL4:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              4.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              4.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.RoundedBorder17:
        return BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        );
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.ArialBoldItalicMT12:
        return TextStyle(
          color: ColorConstant.deepPurple50,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.MontserratRomanSemiBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.AsapRomanBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AsapRomanRegular14:
        return TextStyle(
          color: ColorConstant.black900Cc,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.AsapRomanRegular14Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.AsapItalicBold24:
        return TextStyle(
          color: ColorConstant.pink80001,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AsapRomanBold15:
        return TextStyle(
          color: ColorConstant.pink80001,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AsapItalicBold14:
        return TextStyle(
          color: ColorConstant.gray60002,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AsapItalicBold14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AsapItalicBold16:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.ArialBoldItalicMT10:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AsapItalicMedium13:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsSemiBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.AsapItalicBold16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.AsapItalicBold16Pink80001:
        return TextStyle(
          color: ColorConstant.pink80001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Asap',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder14,
  RoundedBorder7,
  CustomBorderTL4,
  RoundedBorder17,
  RoundedBorder10,
}

enum ButtonPadding {
  PaddingAll9,
  PaddingT7,
  PaddingAll6,
  PaddingAll15,
  PaddingT11,
}

enum ButtonVariant {
  FillPink80001,
  OutlineCyan30014,
  OutlineCyan30014_1,
  OutlineGray300,
  FillBluegray90002,
  OutlineBlack90019,
  OutlineGray20001,
  OutlineGray30001,
  OutlineCyan30014_2,
  FillTealA400,
  OutlineWhiteA700,
  OutlinePink80001,
}

enum ButtonFontStyle {
  PoppinsBold16,
  ArialBoldItalicMT12,
  MontserratRomanSemiBold12,
  AsapRomanBold12,
  AsapRomanRegular14,
  AsapRomanRegular14Black900,
  AsapItalicBold24,
  AsapRomanBold15,
  AsapItalicBold14,
  AsapItalicBold14WhiteA700,
  AsapItalicBold16,
  ArialBoldItalicMT10,
  AsapItalicMedium13,
  PoppinsSemiBold18,
  AsapItalicBold16WhiteA700,
  AsapItalicBold16Pink80001,
}
