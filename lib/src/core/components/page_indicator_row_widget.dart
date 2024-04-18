import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

class PageIndicatorRowWidget extends StatelessWidget {
  const PageIndicatorRowWidget({
    super.key,
    required int currentPageIndex,
  }) : _currentPageIndex = currentPageIndex;

  final int _currentPageIndex;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < 5; i++)
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 1),
            height: height * 0.007,
            width: width * 0.059,
            decoration: BoxDecoration(
              color: _currentPageIndex == i
                  ? AppThemeColor.blueColor
                  : _currentPageIndex > i
                      ? Colors.black
                      : const Color(0xFFE3E3E3),
              borderRadius: BorderRadius.circular(10),
            ),
          )
      ],
    );
  }
}
