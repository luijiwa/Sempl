import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/theme/theme.dart';

class FeedbackStepTwo extends StatelessWidget {
  const FeedbackStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AutoSizeText(
          'Подробно опишите товар и свои впечатления от него: (запах, эффект после 2 недель применения, консистенция и т.д.)',
          style: Theme.of(context).textTheme.appBodyMedium,
        ),
        SizedBox(height: width * 0.01527),
        AutoSizeText(
          'минимум 80 слов',
          style: Theme.of(context)
              .textTheme
              .appBodyMedium
              .copyWith(color: AppThemeColor.grisTwo),
        ),
        SizedBox(height: width * 0.02545),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            const TextField(
              decoration: feedbackBiginputDecoration,
              maxLines: 7,
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: width * 0.02,
                  bottom: height * 0.01), // установка отступа для иконки
              child: SvgPicture.asset(
                'assets/icons/text_field_expand.svg',
                colorFilter: const ColorFilter.mode(
                    AppThemeColor.greyTwo, BlendMode.srcIn),
              ), // ваша иконка
            ),
          ],
        ),
      ]),
    );
  }
}
