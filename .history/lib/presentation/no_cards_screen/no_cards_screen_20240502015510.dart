import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';

// ignore: must_be_immutable
class NoCardsScreen extends StatelessWidget {
  NoCardsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 43.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "추천 드릴 친구들을 준비 중이에요",
            style: CustomTextStyles.headlineSmallBold,
          ),
          SizedBox(height: 15.v),
          Text(
            "매일 새로운 친구들을 소개시켜드려요",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 1.v)
        ],
      ),
    );
  }
}
