import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import '../../core/app_export.dart';

// ignore: must_be_immutable
class NoCardsScreen extends StatelessWidget {
  NoCardsScreen({Key? key, required this.onSwipeUpFunc})
      : super(
          key: key,
        );

  final void Function(Offset) onSwipeUpFunc;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SwipeDetector(
      onSwipeUp: onSwipeUpFunc,
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
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
      ),
    );
  }
}
