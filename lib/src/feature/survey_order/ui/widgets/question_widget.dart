import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/dropdown_custom_widget_new.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    required this.text, required this.index, super.key,
  });

  final List<String> text;
  final int index;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: width * 0.03),
          child: AutoSizeText(
            'Вопрос $index',
            style: Theme.of(context)
                .textTheme
                .appBodyMedium
                .copyWith(color: AppThemeColor.blueColor),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: width * 0.03),
          child: AutoSizeText(
            'Какую главную особенность вы ищете в ополаскивателе для рта?',
            style: Theme.of(context).textTheme.appBodyMedium,
          ),
        ),
        DropdownCustomWidgetNew(
          listItems: text,
          hint: 'Выберите ответ',
          onChanged: (value) {},
        ),
      ],
    );
  }
}
