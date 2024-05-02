import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yuvi_s_application1/presentation/main_profile_two_screen/page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon_button.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key, required this.imagePath}) : super(key: key);
  final int imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.9,
      // width: MediaQuery.of(context).size.width * 0.9,
      //color: Colors.red,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: imagePath,
            height: double.maxFinite,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.gradientBlackToBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildRow29930One(
                              context,
                              p29930One: "29,930",
                            ),
                            SizedBox(height: 4.v),
                            Row(
                              children: [
                                Container(
                                  decoration: AppDecoration.outlineBlack,
                                  child: Text(
                                    "스며들다",
                                    style: theme.textTheme.headlineMedium,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    top: 5.v,
                                  ),
                                  decoration: AppDecoration.outlineBlack,
                                  child: Text(
                                    "22",
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                )
                              ],
                            ),
                            _buildRowOne(
                              context,
                              one: "서울",
                              one1: "·",
                              distance: "2km 거리에 있음",
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 43.v),
                          child: Padding(
                            padding: EdgeInsets.only(top: 43.v),
                            child: OutlineGradientButton(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 1.v,
                                right: 1.h,
                                bottom: 1.v,
                              ),
                              strokeWidth: 1.h,
                              gradient: LinearGradient(
                                begin: Alignment(0.14, 0.07),
                                end: Alignment(0.86, 0.83),
                                colors: [
                                  appTheme.tealA20001,
                                  appTheme.deepPurpleA700
                                ],
                              ),
                              corners: Corners(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                              ),
                              child: CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFrame49,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 4.v)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
