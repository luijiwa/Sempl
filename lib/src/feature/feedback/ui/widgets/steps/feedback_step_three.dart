import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/feature/feedback/bloc/feedback_bloc.dart';
import 'package:my_app/src/feature/feedback/ui/widgets/feedback_checkbox_row_widget.dart';
import 'package:my_app/src/feature/feedback/ui/widgets/input_field_with_counter_widget.dart';

class FeedbackStepThree extends StatefulWidget {
  const FeedbackStepThree({super.key});

  @override
  State<FeedbackStepThree> createState() => _FeedbackStepThreeState();
}

class _FeedbackStepThreeState extends State<FeedbackStepThree> {
  bool noPlusChecked = false;
  bool noMinusChecked = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final bloc = context.read<FeedbackBloc>();
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22)
                  .copyWith(bottom: width * 0.01527),
              child: AutoSizeText(
                'Напишите 2 основных преимущества продукта',
                style: Theme.of(context).textTheme.appBodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17)
                  .copyWith(bottom: width * 0.01527),
              child: FeedbackCheckboxRowWidget(
                title: 'Нет плюсов',
                value: noPlusChecked,
                onChanged: (value) {
                  bloc.add(FeedbackMinusChange());
                  setState(() {
                    noPlusChecked = value;
                  });
                },
              ),
            ),
            InputFieldWithCounterWidget(
                hint: 'Плюс 1', enabled: !noPlusChecked),
            SizedBox(height: width * 0.02545),
            InputFieldWithCounterWidget(
                hint: 'Плюс 1', enabled: !noPlusChecked),
          ],
        ),
        SizedBox(height: width * 0.06108),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22)
                  .copyWith(bottom: width * 0.01527),
              child: AutoSizeText(
                'Напишите 2 основных преимущества продукта',
                style: Theme.of(context).textTheme.appBodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17)
                  .copyWith(bottom: width * 0.01527),
              child: FeedbackCheckboxRowWidget(
                title: 'Нет минусов',
                value: noMinusChecked,
                onChanged: (value) {
                  setState(() {
                    noMinusChecked = value;
                  });
                },
              ),
            ),
            InputFieldWithCounterWidget(
                hint: 'Минус 1', enabled: !noMinusChecked),
            SizedBox(height: width * 0.02545),
            InputFieldWithCounterWidget(
                hint: 'Минус 1', enabled: !noMinusChecked),
          ],
        ),
      ],
    );
  }
}
