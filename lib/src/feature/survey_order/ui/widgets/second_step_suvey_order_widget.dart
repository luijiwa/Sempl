import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/custom_radio_button.dart';
import 'package:my_app/src/core/components/dropdown_custom_widget.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/theme.dart';

class SecondStepSurveyOrderWidget extends StatelessWidget {
  const SecondStepSurveyOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final text = [
      'Сладкий вкус',
      'Уменьшает и предотвращает образование пятен',
      'Держите дыхание свежим',
      'Многофункциональный полоскание рта (например, Listerine Total Care)',
      'Помогает поддерживать крепкие зубы и здоровые десны'
    ];
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22.0,
            ).copyWith(right: 30.0, top: 25, bottom: 13),
            child: AutoSizeText(
              'Для получения образца заполните анкету из нескольких вопросов',
              style: Theme.of(context).textTheme.appBodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: AutoSizeText(
              'Вопрос 1',
              style: Theme.of(context)
                  .textTheme
                  .appBodyMedium
                  .copyWith(color: AppThemeColor.blueColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: AutoSizeText(
              'Какую главную особенность вы ищете в ополаскивателе для рта?',
              style: Theme.of(context).textTheme.appBodyMedium,
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 22),
              shrinkWrap: true,
              itemCount: text.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0).copyWith(),
                  child: Row(
                    children: [
                      CustomRadioButton(value: true, onChanged: (index) {}),
                      const SizedBox(width: 6.0),
                      Flexible(
                        child: Text(text[index],
                            style: Theme.of(context).textTheme.appBodyMedium,
                            overflow: TextOverflow.fade),
                      ),
                    ],
                  ),
                );
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: AutoSizeText(
              'Вопрос 2',
              style: Theme.of(context)
                  .textTheme
                  .appBodyMedium
                  .copyWith(color: AppThemeColor.blueColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: AutoSizeText(
              'Какую главную особенность вы ищете в ополаскивателе для рта?',
              style: Theme.of(context).textTheme.appBodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child:
                DropdownCustomWidget(listItems: text, hint: 'Выберите ответ'),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: NextStepButton(
              title: 'continue'.toUpperCase(),
              onPressed: () {},
            ),
          ),
          const BottomPadding(),
        ],
      ),
    );
  }
}
