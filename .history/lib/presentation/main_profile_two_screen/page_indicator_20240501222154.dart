import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator(
      {Key? key,
      required this.currentPageIndex,
      required this.onUpdateCurrentPageIndex})
      : super(key: key);
  final int currentPageIndex;
  final void Function(int) onUpdateCurrentPageIndex;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
