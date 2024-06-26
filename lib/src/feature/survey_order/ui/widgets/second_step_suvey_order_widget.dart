import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/custom_app_bar.dart';
import 'package:sempl/src/core/widget/custom_radio_button.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/feature/survey/ui/widgets/questions_padding.dart';
import 'package:sempl/src/feature/survey_order/ui/widgets/question_widget.dart';

class SecondStepSurveyOrderWidget extends StatelessWidget {
  const SecondStepSurveyOrderWidget({required this.onPreviousPage, super.key});
  final VoidCallback onPreviousPage;
  @override
  Widget build(BuildContext context) {
    final text = [
      'Сладкий вкус',
      'Уменьшает и предотвращает образование пятен',
      'Держите дыхание свежим',
      'Многофункциональный полоскание рта (например, Listerine Total Care)',
      'Помогает поддерживать крепкие зубы и здоровые десны',
    ];
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.31,
            child: CustomAppBar(
              onTapBack: () => onPreviousPage,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22.0,
            ).copyWith(
              right: 30.0,
              top: height * 0.0363878,
              bottom: height * 0.0223022,
            ),
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
          SizedBox(height: height * 0.01),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0)
                .copyWith(bottom: height * 0.01),
            child: AutoSizeText(
              'Какую главную особенность вы ищете в ополаскивателе для рта?',
              style: Theme.of(context).textTheme.appBodyMedium,
            ),
          ),
          SizedBox(height: height * 0.01),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 22),
            shrinkWrap: true,
            itemCount: text.length,
            itemBuilder: (context, index) => Row(
              children: [
                const CustomRadioButton(),
                const SizedBox(width: 6.0),
                Flexible(
                  child: Text(
                    text[index],
                    style: Theme.of(context).textTheme.appBodyMedium,
                    overflow: TextOverflow.fade,
                  ),
                ),
                SizedBox(width: width * 0.05),
              ],
            ),
            separatorBuilder: (context, index) =>
                SizedBox(height: height * 0.015),
          ),
          const QuestionsPadding(),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 22),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) =>
                QuestionWidget(text: text, index: index + 2),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: height * 0.03),
          ),
          SizedBox(height: height * 0.068),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: NextStepButton(
              title: 'Получить товар '.toUpperCase(),
              onPressed: () {
                context.goNamed(AppRoutes.confirmationOrderTypeOneScreen.name);
              },
            ),
          ),
          const BottomPadding(),
        ],
      ),
    );
  }
}
