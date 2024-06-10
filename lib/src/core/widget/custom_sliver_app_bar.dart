import 'package:flutter/material.dart';
import 'package:sempl/src/core/widget/app_bar_profile_icon_button_widget.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/core/widget/points_widget.dart';
import 'package:sempl/src/core/theme/theme.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SliverAppBar(
      backgroundColor: AppThemeColor.grey,
      leading: const CustomBackButton(),
      actions: [
        // const PointsWidget(),
        SizedBox(width: width * 0.02),
        const AppBarProfileIconButtonWidget(),
        const SizedBox(width: 22),
      ],
    );
  }
}
