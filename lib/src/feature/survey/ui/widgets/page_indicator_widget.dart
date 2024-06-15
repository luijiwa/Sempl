import 'package:flutter/material.dart';
import 'package:sempl/src/core/widget/page_indicator_row_widget.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    required int currentPageIndex, super.key,
  }) : _currentPageIndex = currentPageIndex;

  final int _currentPageIndex;

  @override
  Widget build(BuildContext context) => Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          PageIndicatorRowWidget(currentPageIndex: _currentPageIndex),
          const SizedBox(height: 5),
          Text('шаг ${_currentPageIndex + 1} из 5',
              style: const TextStyle(
                fontSize: 12,
              ),),
        ],
      ),
    );
}
