import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class CardSubTitleWidget extends StatelessWidget {
  const CardSubTitleWidget({Key? key, required this.subTitle})
      : super(key: key);
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack,
      child: Text(
        subTitle,
        maxLines: 3,
        style: theme.textTheme.bodyMedium!.copyWith(
          color: appTheme.blueGray100,
        ),
      ),
    );
  }
}
