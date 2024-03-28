import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class StarRatingWidget extends StatelessWidget {
  const StarRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < 5; i++)
          const Icon(
            Icons.star_rounded,
            color: AppThemeColor.blueColor,
            size: 20.0,
          ),
      ],
    );
  }
}
