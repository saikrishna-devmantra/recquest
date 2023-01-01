import 'package:flutter/material.dart';
import 'package:recquest_21/core/app_export.dart';

// ignore: must_be_immutable
class AppbarCircleimage extends StatelessWidget {
  AppbarCircleimage({this.imagePath, this.svgPath, this.margin, this.onTap});

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          height: getSize(
            40.00,
          ),
          width: getSize(
            40.00,
          ),
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
        ),
      ),
    );
  }
}
