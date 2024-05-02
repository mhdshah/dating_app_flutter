import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'widgets/chipviewclose_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MainProfileThreeScreen extends StatelessWidget {
  MainProfileThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        appBar: _buildAppbar(context),
        body: Container(
          height: 654.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 75.h,
                            bottom: 61.v,
                          ),
                          child: Text(
                            "라이크 29,930",
                            style: CustomTextStyles.bodyMediumBlack90002,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle2091600x340,
                                height: 600.v,
                                width: 340.h,
                                radius: BorderRadius.circular(
                                  20.h,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 600.v,
                                  width: 365.h,
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 600.v,
                                          width: 340.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              20.h,
                                            ),
                                            border: Border.all(
                                              color: appTheme.gray80001,
                                              width: 1.h,
                                            ),
                                            gradient: LinearGradient(
                                              begin: Alignment(0.51, 1),
                                              end: Alignment(0.51, 0.58),
                                              colors: [
                                                appTheme.black90002,
                                                appTheme.black90002
                                                    .withOpacity(0)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 20.h,
                                            top: 16.v,
                                            bottom: 20.v,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              // Align(
                                              //   alignment: Alignment.centerLeft,
                                              //   child: Container(
                                              //     height: 3.v,
                                              //     width: 56.h,
                                              //     decoration: BoxDecoration(
                                              //       color: appTheme.black90002,
                                              //       borderRadius:
                                              //           BorderRadius.circular(
                                              //         1.h,
                                              //       ),
                                              //     ),
                                              //   ),
                                              // ),
                                              // Align(
                                              //   alignment: Alignment.centerLeft,
                                              //   child: Container(
                                              //     height: 3.v,
                                              //     width: 56.h,
                                              //     margin: EdgeInsets.only(
                                              //         left: 60.h),
                                              //     decoration: BoxDecoration(
                                              //       color: appTheme.gray900,
                                              //       borderRadius:
                                              //           BorderRadius.circular(
                                              //         1.h,
                                              //       ),
                                              //     ),
                                              //   ),
                                              // ),
                                              // Align(
                                              //   alignment: Alignment.centerLeft,
                                              //   child: Container(
                                              //     height: 3.v,
                                              //     width: 56.h,
                                              //     margin: EdgeInsets.only(
                                              //         left: 121.h),
                                              //     decoration: BoxDecoration(
                                              //       color: appTheme.pink500,
                                              //       borderRadius:
                                              //           BorderRadius.circular(
                                              //         1.h,
                                              //       ),
                                              //     ),
                                              //   ),
                                              // ),
                                              // Container(
                                              //   height: 3.v,
                                              //   width: 56.h,
                                              //   margin: EdgeInsets.only(
                                              //       right: 105.h),
                                              //   decoration: BoxDecoration(
                                              //     color: appTheme.gray900,
                                              //     borderRadius:
                                              //         BorderRadius.circular(
                                              //       1.h,
                                              //     ),
                                              //   ),
                                              // ),
                                              Container(
                                                height: 3.v,
                                                width: 56.h,
                                                margin: EdgeInsets.only(
                                                    right: 45.h),
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    1.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 3.v,
                                                width: 56.h,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    1.h,
                                                  ),
                                                  gradient: LinearGradient(
                                                    begin:
                                                        Alignment(0.14, 0.07),
                                                    end: Alignment(0.5, 1),
                                                    colors: [
                                                      appTheme.pinkA40001,
                                                      appTheme.pinkA200
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 3.v,
                                                width: 56.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    1.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 3.v,
                                                width: 56.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    1.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 3.v,
                                                width: 56.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    1.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 3.v,
                                                width: 56.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.gray900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    1.h,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              _buildRow(context),
                                              SizedBox(height: 20.v),
                                              _buildRowarrowdown(context)
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle1600x340,
                                height: 600.v,
                                width: 340.h,
                                radius: BorderRadius.circular(
                                  20.h,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 600.v,
                                  width: 340.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      20.h,
                                    ),
                                    border: Border.all(
                                      color: appTheme.gray80001,
                                      width: 1.h,
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment(0.51, 1),
                                      end: Alignment(0.51, 0.58),
                                      colors: [
                                        appTheme.black90002,
                                        appTheme.black90002.withOpacity(0)
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 600.v,
                  width: 715.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle1,
                        height: 600.v,
                        width: 340.h,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 600.v,
                              width: 340.h,
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: 600.v,
                                      width: 340.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          20.h,
                                        ),
                                        border: Border.all(
                                          color: appTheme.gray80001,
                                          width: 1.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.51, 1),
                                          end: Alignment(0.51, 0.58),
                                          colors: [
                                            appTheme.black90002,
                                            appTheme.black90002.withOpacity(0)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 16.v),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 3.v,
                                            width: 56.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1.h,
                                              ),
                                              gradient: LinearGradient(
                                                begin: Alignment(0.14, 0.07),
                                                end: Alignment(0.5, 1),
                                                colors: [
                                                  appTheme.pinkA40001,
                                                  appTheme.pinkA200
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 3.v,
                                            width: 56.h,
                                            margin: EdgeInsets.only(left: 4.h),
                                            decoration: BoxDecoration(
                                              color: appTheme.gray900,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1.h,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 16.v),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 3.v,
                                            width: 56.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.gray900,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1.h,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 3.v,
                                            width: 56.h,
                                            margin: EdgeInsets.only(left: 4.h),
                                            decoration: BoxDecoration(
                                              color: appTheme.gray900,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1.h,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 16.v,
                                        right: 44.h,
                                        bottom: 20.v,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 3.v,
                                            width: 56.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.gray900,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1.h,
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 305.h),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 68.h),
                                                        child:
                                                            _buildRow29930One(
                                                          context,
                                                          p29930One: "29,930",
                                                        ),
                                                      ),
                                                      SizedBox(height: 4.v),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBlack,
                                                            child: Text(
                                                              "벌꿀오소리",
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineMedium,
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 4.h,
                                                              top: 5.v,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBlack,
                                                            child: Text(
                                                              "27",
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineSmall,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 16.h),
                                                        child: _buildRowOne(
                                                          context,
                                                          one: "서울",
                                                          one1: "·",
                                                          distance:
                                                              "2km 거리에 있음",
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 94.h,
                                                    top: 43.v,
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 94.h,
                                                      top: 43.v,
                                                    ),
                                                    child:
                                                        OutlineGradientButton(
                                                      padding: EdgeInsets.only(
                                                        left: 1.h,
                                                        top: 1.v,
                                                        right: 1.h,
                                                        bottom: 1.v,
                                                      ),
                                                      strokeWidth: 1.h,
                                                      gradient: LinearGradient(
                                                        begin: Alignment(
                                                            0.14, 0.07),
                                                        end: Alignment(
                                                            0.86, 0.83),
                                                        colors: [
                                                          appTheme.tealA20001,
                                                          appTheme
                                                              .deepPurpleA700
                                                        ],
                                                      ),
                                                      corners: Corners(
                                                        topLeft:
                                                            Radius.circular(24),
                                                        topRight:
                                                            Radius.circular(24),
                                                        bottomLeft:
                                                            Radius.circular(24),
                                                        bottomRight:
                                                            Radius.circular(24),
                                                      ),
                                                      child: CustomIconButton(
                                                        height: 48.adaptSize,
                                                        width: 48.adaptSize,
                                                        padding: EdgeInsets.all(
                                                            12.h),
                                                        child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgFrame49,
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
                                            imagePath:
                                                ImageConstant.imgArrowDown,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 59.h,
                                top: 449.v,
                                bottom: 60.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildRow29930One(
                                    context,
                                    p29930One: "29,930",
                                  ),
                                  SizedBox(height: 9.v),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      margin: EdgeInsets.only(right: 7.h),
                                      decoration: AppDecoration.outlineBlack,
                                      child: Text(
                                        "22",
                                        style: theme.textTheme.headlineSmall,
                                      ),
                                    ),
                                  ),
                                  _buildRowOne(
                                    context,
                                    one: "서울",
                                    one1: "·",
                                    distance: "2km 거리에 있음",
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 36.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBtcon28,
        margin: EdgeInsets.only(
          left: 8.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "목이길어슬픈기린",
              style: CustomTextStyles.titleSmallBold,
            ),
            TextSpan(
              text: "님",
              style: CustomTextStyles.bodyMediumGray50,
            ),
            TextSpan(
              text: "의 ",
              style: CustomTextStyles.bodyMediumGray50,
            ),
            TextSpan(
              text: "새로운 ",
              style: CustomTextStyles.bodyMediumGray50,
            ),
            TextSpan(
              text: "스팟",
              style: CustomTextStyles.titleSmallBold,
            )
          ],
        ),
        textAlign: TextAlign.left,
      ),
      actions: [
        Container(
          margin: EdgeInsets.fromLTRB(4.h, 10.v, 5.h, 5.v),
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 5.v,
          ),
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppbarImage(
                imagePath: ImageConstant.imgStar18,
              ),
              AppbarTitle(
                text: "323,233",
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 2.v,
                  right: 4.h,
                ),
              )
            ],
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBtcon40,
          margin: EdgeInsets.only(
            top: 5.v,
            right: 9.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
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
                      "잭과분홍콩나물",
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
                      "25",
                      style: theme.textTheme.headlineSmall,
                    ),
                  )
                ],
              ),
              SizedBox(height: 4.v),
              CustomOutlinedButton(
                width: 157.h,
                text: "진지한 연애를 찾는 중",
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 5.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 18.v,
                    width: 15.h,
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Wrap(
                runSpacing: 4.v,
                spacing: 4.h,
                children: List<Widget>.generate(
                    5, (index) => ChipviewcloseItemWidget()),
              )
            ],
          ),
          Spacer(
            flex: 13,
          ),
          Padding(
            padding: EdgeInsets.only(top: 185.v),
            child: Padding(
              padding: EdgeInsets.only(top: 185.v),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0.12, 0.03),
                  end: Alignment(0.86, 1.12),
                  colors: [appTheme.tealA200, appTheme.deepPurpleA700],
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
                  decoration: IconButtonStyleHelper.outlineTL24,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrame49,
                  ),
                ),
              ),
            ),
          ),
          Spacer(
            flex: 86,
          ),
          Padding(
            padding: EdgeInsets.only(top: 185.v),
            child: Padding(
              padding: EdgeInsets.only(top: 185.v),
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
                  colors: [appTheme.tealA20001, appTheme.deepPurpleA700],
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
    );
  }

  /// Section Widget
  Widget _buildRowarrowdown(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(left: 330.h),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildRow29930One(
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
            imagePath: ImageConstant.imgStar110,
            height: 20.adaptSize,
            width: 20.adaptSize,
            radius: BorderRadius.circular(
              1.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(2.h, 5.v, 4.h, 5.v),
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
  }

  /// Common widget
  Widget _buildRowOne(
    BuildContext context, {
    required String one,
    required String one1,
    required String distance,
  }) {
    return Row(
      children: [
        Container(
          decoration: AppDecoration.outlineBlack,
          child: Text(
            one,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray100,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 4.h),
          decoration: AppDecoration.outlineBlack,
          child: Text(
            one1,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray100,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 4.h),
          decoration: AppDecoration.outlineBlack,
          child: Text(
            distance,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray100,
            ),
          ),
        )
      ],
    );
  }
}
