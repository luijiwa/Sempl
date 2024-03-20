import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/feature/survey/first_step_widget.dart';
import 'package:my_app/src/core/components/checkbox_row.dart';

class ThirthStepWidget extends StatelessWidget {
  const ThirthStepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'НЕМНОГО ИНФОРМАЦИИ О ТЕБЕ',
          style: TextStyle(fontSize: 30, fontFamily: 'DrukCyr'),
          maxLines: 1,
        ),
        QuestionsPadding(),
        QuestionWidget(
          title: 'Сколько человек живет с вами?',
          child: DropdownCustomWidget(
            listItems: ['1', '2', '3'],
            hint: 'Выберите количество',
          ),
        ),
        QuestionsPadding(),
        ChildrenQuestionUntilEighteen(),
        QuestionsPadding(),
        PetsWidget(),
        QuestionsPadding(),
        FamilyIncomeQuestionWidget(),
        QuestionsPadding(),
        PercentQuestion(),
        QuestionsPadding(),
      ],
    );
  }
}

class QuestionsPadding extends StatelessWidget {
  const QuestionsPadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final standartPadding = height * 0.037;
    return SizedBox(height: standartPadding);
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
        const AutoSizeText(
            'Какой процент общего семейного дохода вы тратите на покупку косметики и товаров для дома (средства для уборки)?'),
        SizedBox(height: height * 0.012),
        const DropdownCustomWidget(
          listItems: ['5%', '10%', '20%'],
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
        const AutoSizeText('Каков средний ежемесячный доход вашей семьи?'),
        SizedBox(height: height * 0.012),
        const DropdownCustomWidget(
          listItems: ['10 000', '20 000', '30 000'],
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
        SizedBox(height: height * 0.012),
        const CheckboxRow(title: 'Да', value: true),
        const CheckboxRow(title: 'Нет', value: false),
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
        SizedBox(height: height * 0.012),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: pets.length,
          itemBuilder: (context, index) {
            return CheckboxRow(title: pets[index], value: index == 1);
          },
        )
      ],
    );
  }
}
