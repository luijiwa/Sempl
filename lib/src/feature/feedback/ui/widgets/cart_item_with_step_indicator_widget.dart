import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/page_indicator_row_widget.dart';
import 'package:sempl/src/feature/feedback/ui/widgets/card_item_in_feedback_widget.dart';

class CartItemWithStepIndicatorWidget extends StatelessWidget {
  const CartItemWithStepIndicatorWidget({
    required int currentPageIndex,
    super.key,
  }) : _currentPageIndex = currentPageIndex;

  final int _currentPageIndex;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CardItemInFeedbackWidget(),
        SizedBox(height: 9),
        AutoSizeText(
          '2/14 дней до конца возможности оставить отзыв',
          style: Theme.of(context)
              .textTheme
              .appBodyMedium
              .copyWith(color: AppThemeColor.rose, fontSize: 12),
        ),
        SizedBox(height: width * 0.12725),
        AutoSizeText(
          'ШАГ ${_currentPageIndex + 1}',
          style: Theme.of(context).textTheme.appTitleMedium,
        ),
        SizedBox(height: width * 0.041),
        PageIndicatorRowWidget(
          currentPageIndex: _currentPageIndex,
        ),
        SizedBox(height: width * 0.07),
      ],
    );
  }
}
