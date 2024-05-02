import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yuvi_s_application1/presentation/main_profile_two_screen/favorite_card_widget.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';

class CardSubTitleWidget extends StatelessWidget {
  const CardSubTitleWidget({Key? key, required this.subTitle}) : super(key: key);
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: AppDecoration.outlineBlack,
          child: Text(
            one,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray100,
            ),
          ),
        ),
  }
}
