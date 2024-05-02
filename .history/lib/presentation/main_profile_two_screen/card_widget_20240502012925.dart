import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:dating_app/presentation/main_profile_two_screen/card_subtitle_text_widget.dart';
import 'package:dating_app/presentation/main_profile_two_screen/favorite_card_widget.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'chipviewclose_item_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key,
      required this.imagePath,
      required this.favoriteCount,
      required this.titleOneText,
      required this.titleOneNumber,
      required this.subTitle,
      required this.showChips})
      : super(key: key);
  final String imagePath;
  final String favoriteCount;
  final String titleOneText;
  final String titleOneNumber;
  final String subTitle;
  final bool showChips;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FavoriteCardWidget(count: favoriteCount),
                              SizedBox(height: 4.v),
                              Row(
                                children: [
                                  Container(
                                    decoration: AppDecoration.outlineBlack,
                                    child: Text(
                                      titleOneText,
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
                                      titleOneNumber,
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                  )
                                ],
                              ),
                              CardSubTitleWidget(subTitle: subTitle),
                              showChips
                                  ? CustomOutlinedButton(
                                      width: 157.h,
                                      text: "진지한 연애를 찾는 중",
                                      leftIcon: Text('💖 '))
                                  : SizedBox(),
                              showChips ? SizedBox(height: 4.v) : SizedBox(),
                              showChips
                                  ? Wrap(
                                      runSpacing: 4.v,
                                      spacing: 4.h,
                                      children: List<Widget>.generate(
                                        5,
                                        (index) => ChipviewcloseItemWidget(
                                          emoji: getEmoji(index),
                                        ),
                                      ),
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
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

  /*Widget _buildRow29930One(
    BuildContext context, {
    required String p29930One,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStar15,
            height: 20.adaptSize,
            width: 20.adaptSize,
            radius: BorderRadius.circular(
              1.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 2.v,
              right: 4.h,
            ),
            child: Text(
              p29930One,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.gray50,
              ),
            ),
          )
        ],
      ),
    );
  }*/

  /// Common widget
  ///

  String getEmoji(int index) {
    switch (index) {
      case 0:
        return "🍸 전혀 안 함";
      case 1:
        return "🚬 비흡연";
      case 2:
        return "💪🏻 매일 1시간 이상";
      case 3:
        return "🤝 만나는 걸 좋아함";
      default:
        return "INFP";
    }
  }
}
