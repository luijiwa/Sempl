import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/dropdown_custom_widget_new.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/feature/survey/ui/widgets/questions_padding.dart';
import 'package:my_app/src/core/components/checkbox_row.dart';

class ThirthStepWidget extends StatelessWidget {
  const ThirthStepWidget({super.key, required this.onNextPage});
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.035),
            AutoSizeText(
              'НЕМНОГО ИНФОРМАЦИИ О ТЕБЕ',
              style: Theme.of(context).textTheme.appProfileTitle,
              maxLines: 1,
            ),
            SizedBox(height: height * 0.016),
            const QuestionWidget(
              title: 'Сколько человек живет с вами?',
              child: DropdownCustomWidgetNew(
                listItems: ['1', '2', 'Другое'],
                hint: 'Выберите количество',
              ),
            ),
            const QuestionsPadding(),
            const ChildrenQuestionUntilEighteen(),
            const QuestionsPadding(),
            const PetsWidget(),
            const QuestionsPadding(),
            const FamilyIncomeQuestionWidget(),
            const QuestionsPadding(),
            const PercentQuestion(),
            SizedBox(height: height * 0.0657),
            NextStepButton(title: 'ШАГ 4', onPressed: onNextPage),
            const BottomPadding(),
          ],
        ),
      ),
    );
  }
}

class PercentQuestion extends StatelessWidget {
  const PercentQuestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: height * 0.05),
          child: const AutoSizeText(
              'Какой процент общего семейного дохода вы тратите на покупку косметики и товаров для дома (средства для уборки)?'),
        ),
        SizedBox(height: height * 0.012),
        const DropdownCustomWidgetNew(
          listItems: ['5%', '10%', 'Другое'],
          hint: 'Выберите количество',
        ),
      ],
    );
  }
}

class FamilyIncomeQuestionWidget extends StatelessWidget {
  const FamilyIncomeQuestionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: height * 0.05),
          child: const AutoSizeText(
              'Каков средний ежемесячный доход вашей семьи?'),
        ),
        SizedBox(height: height * 0.012),
        const DropdownCustomWidgetNew(
          listItems: ['10 000', '20 000', 'Другое'],
          hint: 'Выберите количество',
        ),
      ],
    );
  }
}

class ChildrenQuestionUntilEighteen extends StatelessWidget {
  const ChildrenQuestionUntilEighteen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AutoSizeText('У вас есть дети до 18 лет?'),
        SizedBox(height: height * 0.009),
        const CheckboxRowWidget(title: 'Да', value: true),
        const CheckboxRowWidget(title: 'Нет', value: false),
      ],
    );
  }
}

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.title,
    required this.child,
  });
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(title),
        SizedBox(height: height * 0.012),
        child,
      ],
    );
  }
}

class PetsWidget extends StatelessWidget {
  const PetsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final List<String> pets = [
      'Нет',
      'Кошка',
      'Собака',
      'Грызуны',
      'Рыбки',
      'Попугаи'
    ];
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AutoSizeText('Какие у вас есть животные?'),
        SizedBox(height: height * 0.009),
        ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: pets.length,
          itemBuilder: (context, index) {
            return CheckboxRowWidget(title: pets[index], value: index == 1);
          },
        )
      ],
    );
  }
}
