import 'package:flutter/material.dart';
import '../../core/app_export.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarImage extends StatelessWidget {
  AppbarImage({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder1,
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 28.adaptSize,
          width: 28.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            1.h,
          ),
        ),
      ),
    );
  }
}
