import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ChipviewcloseItemWidget extends StatelessWidget {
  const ChipviewcloseItemWidget({Key? key, required this.emoji})
      : super(
          key: key,
        );

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 9.v,
        left: 9.h,
        right: 14.h,
        bottom: 9.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "전혀 안 함",
        style: TextStyle(
          color: appTheme.gray100,
          fontSize: 14.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w400,
        ),
      ),
      avatar: Text(emoji),
      selected: false,
      backgroundColor: appTheme.gray90002,
      selectedColor: appTheme.gray90002,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray80001,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          18.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
