import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
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
        ],
      ),
    );
  }
}
