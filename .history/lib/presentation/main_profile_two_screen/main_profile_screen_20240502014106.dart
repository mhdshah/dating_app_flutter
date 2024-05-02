import 'package:flutter/material.dart';
import 'package:dating_app/presentation/main_profile_two_screen/card_widget.dart';
import 'package:dating_app/presentation/main_profile_two_screen/page_indicator.dart';
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
  late PageController _pageViewController;
  int _currentPageIndex = 0;
  List<CardWidget> _mainCardList = [];

  @override
  void initState() {
    super.initState();
    _setMainCardData();
    _pageViewController = PageController(
      viewportFraction: 0.9,
      initialPage: 0,
    );
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
        imagePath: ImageConstant.imgProfileThree,
        favoriteCount: "26,930",
        titleOneText: "스며들다",
        titleOneNumber: "25",
        subTitle: "서울·2km 거리에 있음",
        showChips: true,
      ),
      CardWidget(
        imagePath: ImageConstant.imgProfileThree,
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
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
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
              PageView(
                controller: _pageViewController,
                onPageChanged: _handlePageViewChanged,
                children: _mainCardList,
                //pageSnapping: false,
                allowImplicitScrolling: false,
              ),
              PageIndicator(
                currentPageIndex: _currentPageIndex,
                onUpdateCurrentPageIndex: _updateCurrentPageIndex,
                pageCount: _mainCardList.length,
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