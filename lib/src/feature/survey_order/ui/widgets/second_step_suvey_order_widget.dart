import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/custom_app_bar.dart';
import 'package:my_app/src/core/components/custom_radio_button.dart';
import 'package:my_app/src/core/components/dropdown_custom_widget.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/router/app_routes.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/survey/first_step_widget.dart';
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
    final height = MediaQuery.sizeOf(context).height;
    logger.i(height * 0.029345);
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.31,
            child: const CustomAppBar(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22.0,
            ).copyWith(
                right: 30.0,
                top: height * 0.0363878,
                bottom: height * 0.0223022),
            child: AutoSizeText(
              'Для получения образца заполните анкету из нескольких вопросов',
              style: Theme.of(context).textTheme.appBodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0)
                .copyWith(bottom: height * 0.0083),
            child: AutoSizeText(
              'Вопрос 1',
              style: Theme.of(context)
                  .textTheme
                  .appBodyMedium
                  .copyWith(color: AppThemeColor.blueColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0)
                .copyWith(bottom: height * 0.0083),
            child: AutoSizeText(
              'Какую главную особенность вы ищете в ополаскивателе для рта?',
              style: Theme.of(context).textTheme.appBodyMedium,
            ),
          ),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 22),
              shrinkWrap: true,
              itemCount: text.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CustomRadioButton(value: true, onChanged: (index) {}),
                    const SizedBox(width: 6.0),
                    Flexible(
                      child: Text(text[index],
                          style: Theme.of(context).textTheme.appBodyMedium,
                          overflow: TextOverflow.fade),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: height * 0.011738);
              }),
          const QuestionsPadding(),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 22),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return QuestionWidget(text: text, index: index + 2);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: height * 0.029345);
              }),
          SizedBox(height: height * 0.068),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: NextStepButton(
              title: 'continue'.toUpperCase(),
              onPressed: () {
                context.goNamed(AppRoutes.surveyOrderConfirmTypeOne.name);
              },
            ),
          ),
          const BottomPadding(),
        ],
      ),
    );
  }
}

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
