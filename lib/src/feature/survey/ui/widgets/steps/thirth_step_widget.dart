import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/dropdown_custom_widget_new.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/survey/bloc/survey_bloc.dart';
import 'package:sempl/src/feature/survey/ui/widgets/questions_padding.dart';
import 'package:sempl/src/core/widget/checkbox_row.dart';

class ThirthStepWidget extends StatefulWidget {
  const ThirthStepWidget({super.key, required this.onNextPage});
  final VoidCallback onNextPage;

  @override
  State<ThirthStepWidget> createState() => _ThirthStepWidgetState();
}

class _ThirthStepWidgetState extends State<ThirthStepWidget> {
  late final GlobalKey<FormState> _formKey;
  @override
  void initState() {
    super.initState();

    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: _formKey,
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
              QuestionWidget(
                title: 'Сколько человек живет с вами?',
                child: DropdownCustomWidgetNew(
                  onChanged: (value) => {
                    if (value != null)
                      {
                        context
                            .read<SurveyBloc>()
                            .add(SurveyEvent.setPeopleLivingWith(value))
                      }
                  },
                  listItems: const ['1', '2', 'Другое'],
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
              NextStepButton(
                  title: 'ШАГ 4',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      widget.onNextPage();
                    }
                  }),
              const BottomPadding(),
            ],
          ),
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
        DropdownCustomWidgetNew(
          onChanged: (value) => {
            if (value != null)
              {
                context
                    .read<SurveyBloc>()
                    .add(SurveyEvent.setPercentageSpentOnCosmetics(value))
              }
          },
          listItems: const ['5%', '10%', 'Другое'],
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
        DropdownCustomWidgetNew(
          onChanged: (value) => {
            if (value != null)
              {
                context
                    .read<SurveyBloc>()
                    .add(SurveyEvent.setAverageMonthlyIncome(value))
              }
          },
          listItems: const ['10 000', '20 000', 'Другое'],
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
        CheckboxRowWidget(
          title: 'Да',
          value: false,
          onChange: (value) => value == true
              ? context.read<SurveyBloc>().add(
                    const SurveyEvent.setHasChildren(true),
                  )
              : null,
        ),
        CheckboxRowWidget(
          title: 'Нет',
          value: false,
          onChange: (value) => value == true
              ? context.read<SurveyBloc>().add(
                    const SurveyEvent.setHasChildren(false),
                  )
              : null,
        ),
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
            return CheckboxRowWidget(
              title: pets[index],
              value: false,
              onChange: (value) => (value) => value == true
                  ? context.read<SurveyBloc>().add(
                        SurveyEvent.setPets(pets[index]),
                      )
                  : null,
            );
          },
        )
      ],
    );
  }
}
