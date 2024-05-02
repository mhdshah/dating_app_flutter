import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ChipviewcloseItemWidget extends StatelessWidget {
  const ChipviewcloseItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 9.v,
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
      // avatar: CustomImageView(
      //   imagePath: ImageConstant.imgCloseGray600,
      //   height: 18.v,
      //   width: 15.h,
      //   margin: EdgeInsets.only(right: 4.h),
      // ),
      avatar: Text('💖'),
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
