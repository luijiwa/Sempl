import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/feedback/bloc/feedback_bloc.dart';
import 'package:sempl/src/feature/feedback/ui/widgets/feedback_checkbox_row_widget.dart';
import 'package:sempl/src/feature/feedback/ui/widgets/input_field_with_counter_widget.dart';

///TODO Поменять на нормальное изменение значений bool
class FeedbackStepThree extends StatefulWidget {
  const FeedbackStepThree({super.key});

  @override
  State<FeedbackStepThree> createState() => _FeedbackStepThreeState();
}

class _FeedbackStepThreeState extends State<FeedbackStepThree> {
  // bool noPlusChecked = false;
  // bool noMinusChecked = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final bloc = context.watch<FeedbackBloc>();
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
              child: BlocBuilder<FeedbackBloc, FeedbackState>(
                builder: (context, state) {
                  final noPlusChecked = state.plusIsEnabeled;

                  return FeedbackCheckboxRowWidget(
                    title: 'Нет плюсов',
                    value: noPlusChecked,
                    onChanged: (value) {
                      bloc.add(FeedbackPlusChange());
                    },
                  );
                },
              ),
            ),
            BlocBuilder<FeedbackBloc, FeedbackState>(
              buildWhen: (previous, current) =>
                  previous.plusIsEnabeled != current.plusIsEnabeled,
              builder: (context, state) {
                final noPlusChecked = !state.plusIsEnabeled;
                return InputFieldWithCounterWidget(
                    hint: 'Плюс 1', enabled: noPlusChecked);
              },
            ),
            SizedBox(height: width * 0.02545),
            BlocBuilder<FeedbackBloc, FeedbackState>(
              buildWhen: (previous, current) =>
                  previous.plusIsEnabeled != current.plusIsEnabeled,
              builder: (context, state) {
                final noPlusChecked = !state.plusIsEnabeled;

                return InputFieldWithCounterWidget(
                    hint: 'Плюс 1', enabled: noPlusChecked);
              },
            ),
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
              child: BlocBuilder<FeedbackBloc, FeedbackState>(
                buildWhen: (previous, current) =>
                    previous.minusIsEnabeled != current.minusIsEnabeled,
                builder: (context, state) {
                  final noMinusChecked = state.minusIsEnabeled;
                  return FeedbackCheckboxRowWidget(
                    title: 'Нет минусов',
                    value: noMinusChecked,
                    onChanged: (value) {
                      bloc.add(FeedbackMinusChange());
                    },
                  );
                },
              ),
            ),
            BlocBuilder<FeedbackBloc, FeedbackState>(
              buildWhen: (previous, current) =>
                  previous.minusIsEnabeled != current.minusIsEnabeled,
              builder: (context, state) {
                final noMinusChecked = !state.minusIsEnabeled;
                return InputFieldWithCounterWidget(
                    hint: 'Минус 1', enabled: noMinusChecked);
              },
            ),
            SizedBox(height: width * 0.02545),
            BlocBuilder<FeedbackBloc, FeedbackState>(
              buildWhen: (previous, current) =>
                  previous.minusIsEnabeled != current.minusIsEnabeled,
              builder: (context, state) {
                final noMinusChecked = !state.minusIsEnabeled;

                return InputFieldWithCounterWidget(
                    hint: 'Минус 1', enabled: noMinusChecked);
              },
            ),
          ],
        ),
      ],
    );
  }
}
