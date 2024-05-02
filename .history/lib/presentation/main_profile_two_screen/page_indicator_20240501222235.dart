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
    return const Placeholder();
  }
}
