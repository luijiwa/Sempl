import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/page_indicator_row_widget.dart';
import 'package:my_app/src/core/theme/theme.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    super.key,
    required int currentPageIndex,
  }) : _currentPageIndex = currentPageIndex;

  final int _currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          PageIndicatorRowWidget(currentPageIndex: _currentPageIndex),
          const SizedBox(height: 5),
          Text('шаг ${_currentPageIndex + 1} из 5',
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'SourceSansPro',
              )),
        ],
      ),
    );
  }
}
