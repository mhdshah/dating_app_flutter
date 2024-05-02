import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator(
      {Key? key,
      required this.currentPageIndex,
      required this.onUpdateCurrentPageIndex,
      required this.pageCount})
      : super(key: key);
  final int currentPageIndex;
  final void Function(int) onUpdateCurrentPageIndex;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    List<Widget> indicators = [];
    for (int i = 0; i < pageCount; i++) {
      if (currentPageIndex == i) {
        indicators.add(
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            height: 3.v,
            width: 56.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                1.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.14, 0.07),
                end: Alignment(0.5, 1),
                colors: [appTheme.pinkA40001, appTheme.pinkA200],
              ),
            ),
          ),
        );
      } else {
        indicators.add(
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            height: 3.v,
            width: 56.h,
            decoration: BoxDecoration(
              color: appTheme.gray900,
              borderRadius: BorderRadius.circular(
                1.h,
              ),
            ),
          ),
        );
      }
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: indicators,
      ),
    );
  }
}
