import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

class StarRatingWidget extends StatelessWidget {
  const StarRatingWidget({
    super.key,
    this.size = 20,
  });
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < 5; i++)
          Icon(
            Icons.star_rounded,
            color: AppThemeColor.blueColor,
            size: size,
          ),
      ],
    );
  }
}
