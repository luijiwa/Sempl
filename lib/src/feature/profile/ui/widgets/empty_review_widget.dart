import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class EmptyReviewWidget extends StatelessWidget {
  const EmptyReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return SliverPadding(
      padding: EdgeInsets.only(
        top: width * 0.1069762712,
        bottom: 0.0562919492 * width,
        left: width * 0.065,
        right: width * 0.065,
      ),
      sliver: SliverToBoxAdapter(
        child: AutoSizeText(
          'У ВАС ЕЩЕ НЕТ ПРОТЕСТИРОВАННЫХ ОБРАЗЦОВ :(',
          style: Theme.of(context).textTheme.itemDateDelivery,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
