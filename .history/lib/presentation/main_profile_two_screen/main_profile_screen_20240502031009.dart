import 'package:dating_app/presentation/no_cards_screen/no_cards_screen.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/presentation/main_profile_two_screen/card_widget.dart';
import 'package:dating_app/presentation/main_profile_two_screen/page_indicator.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';

class MainProfileScreen extends StatefulWidget {
  MainProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<MainProfileScreen> createState() => _MainProfileScreenState();
}

class _MainProfileScreenState extends State<MainProfileScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  PageController _pageViewController = PageController(
    viewportFraction: 0.9,
    initialPage: 0,
  );
  int _currentPageIndex = 0;
  List<CardWidget> _mainCardList = [];
  bool _showPageView = true;

  @override
  void initState() {
    super.initState();
    _setMainCardData();
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  void _setMainCardData() {
    _mainCardList = [
      CardWidget(
        imagePath: ImageConstant.imgProfileOne,
        favoriteCount: "29,930",
        titleOneText: "스며들다",
        titleOneNumber: "25",
        subTitle: "서울·2km 거리에 있음",
        showChips: false,
      ),
      CardWidget(
        imagePath: ImageConstant.imgProfileTwo,
        favoriteCount: "28,930",
        titleOneText: "스며들다",
        titleOneNumber: "25",
        subTitle:
            "서로 아껴주고 힘이 되어줄 사람 찾아요\n선릉으로 직장 다니고 있고 여행 좋아해요\n이상한 이야기하시는 분 바로 차단입니다",
        showChips: false,
      ),
      CardWidget(
        imagePath: ImageConstant.imgProfileThree,
        favoriteCount: "27,930",
        titleOneText: "스며들다",
        titleOneNumber: "25",
        subTitle: "서울·2km 거리에 있음",
        showChips: true,
      ),
      CardWidget(
        imagePath: ImageConstant.imgProfileFour,
        favoriteCount: "26,930",
        titleOneText: "스며들다",
        titleOneNumber: "25",
        subTitle: "서울·2km 거리에 있음",
        showChips: true,
      ),
      CardWidget(
        imagePath: ImageConstant.imgProfileFive,
        favoriteCount: "26,930",
        titleOneText: "스며들다",
        titleOneNumber: "25",
        subTitle: "서울·2km 거리에 있음",
        showChips: true,
      ),
    ];
  }

  void _handlePageViewChanged(int currentPageIndex) {
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    print("index --> $index");
    _pageViewController.jumpToPage(index);
    // _pageViewController.animateToPage(
    //   index,
    //   duration: const Duration(milliseconds: 100),
    //   curve: Curves.easeInOut,
    // );
  }

  void _addSwipe(SwipeDirection direction, Offset offset) {
    if (direction == SwipeDirection.down || direction == SwipeDirection.left) {
      Fluttertoast.showToast(msg: "${direction.toString()}!!!");
      setState(() {
        _showPageView = false;
      });
    } else if (direction == SwipeDirection.up) {
      Fluttertoast.showToast(msg: "${direction.toString()}!!!");
      setState(() {
        _showPageView = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Stack(
            children: [
              SwipeDetector(
                // onSwipeDown: (offset) {
                //   _addSwipe(SwipeDirection.down, offset);
                // },
                onSwipeLeft: (offset) {
                  _addSwipe(SwipeDirection.down, offset);
                },
                child: _showPageView
                    ? PageView(
                        controller: _pageViewController,
                        onPageChanged: _handlePageViewChanged,
                        children: _mainCardList,
                        physics: NeverScrollableScrollPhysics())
                    : NoCardsScreen(
                        onSwipeUpFunc: (offset) {
                          _addSwipe(SwipeDirection.up, offset);
                        },
                      ),
              ),
              _showPageView
                  ? PageIndicator(
                      currentPageIndex: _currentPageIndex,
                      onUpdateCurrentPageIndex: _updateCurrentPageIndex,
                      pageCount: _mainCardList.length,
                    )
                  : SizedBox(),

              /// Left click
              _showPageView
                  ? Positioned(
                      left: 30,
                      top: 0,
                      child: GestureDetector(
                        child: Container(
                          width: 150,
                          height: 100,
                          color: Colors.transparent,
                        ),
                        onTap: () {
                          if (_currentPageIndex != 0) {
                            _updateCurrentPageIndex(--_currentPageIndex);
                          }
                        },
                      ),
                    )
                  : SizedBox(),

              /// Right click
              _showPageView
                  ? Positioned(
                      right: 30,
                      top: 0,
                      child: GestureDetector(
                        child: Container(
                          width: 150,
                          height: 100,
                          color: Colors.transparent,
                        ),
                        onTap: () {
                          if (_currentPageIndex != _mainCardList.length) {
                            _updateCurrentPageIndex(_currentPageIndex++);
                          }
                        },
                      ),
                    )
                  : SizedBox()
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
                imagePath: ImageConstant.imgStar13,
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
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
