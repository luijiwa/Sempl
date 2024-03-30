import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/custom_back_button.dart';
import 'package:my_app/src/core/components/points_widget.dart';
import 'package:my_app/theme.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SliverAppBar(
      backgroundColor: AppThemeColor.grey,
      leading: const CustomBackButton(),
      actions: [
        const PointsWidget(),
        SizedBox(width: width * 0.02),
        Container(
          width: width * 0.1,
          height: width * 0.1,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xff7c94b6),
            image: const DecorationImage(
              image: AssetImage('assets/images/profile.jpg'),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: AppThemeColor.blueColor,
              width: 1.0,
            ),
          ),
        ),
        const SizedBox(width: 22),
      ],
    );
  }
}
