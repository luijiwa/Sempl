import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/dropdown_custom_widget.dart';
import 'package:my_app/src/core/theme/text_theme.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/theme.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.text,
    required this.index,
  });

  final List<String> text;
  final int index;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    logger.w(height * 0.0083);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: height * 0.0083),
          child: AutoSizeText(
            'Вопрос $index',
            style: Theme.of(context)
                .textTheme
                .appBodyMedium
                .copyWith(color: AppThemeColor.blueColor),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: height * 0.0083),
          child: AutoSizeText(
            'Какую главную особенность вы ищете в ополаскивателе для рта?',
            style: Theme.of(context).textTheme.appBodyMedium,
          ),
        ),
        DropdownCustomWidget(listItems: text, hint: 'Выберите ответ'),
      ],
    );
  }
}