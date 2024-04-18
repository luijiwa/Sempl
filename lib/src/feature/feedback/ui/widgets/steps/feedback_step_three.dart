import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/feature/feedback/ui/widgets/feedback_checkbox_row_widget.dart';
import 'package:my_app/src/feature/feedback/ui/widgets/input_field_with_counter_widget.dart';

class FeedbackStepThree extends StatelessWidget {
  const FeedbackStepThree({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
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
              child: const FeedbackCheckboxRowWidget(
                title: 'Нет плюсов',
                value: false,
              ),
            ),
            const InputFieldWithCounterWidget(hint: 'Плюс 1'),
            SizedBox(height: width * 0.02545),
            const InputFieldWithCounterWidget(hint: 'Плюс 1'),
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
              child: const FeedbackCheckboxRowWidget(
                title: 'Нет минусов',
                value: false,
              ),
            ),
            const InputFieldWithCounterWidget(hint: 'Минус 1'),
            SizedBox(height: width * 0.02545),
            const InputFieldWithCounterWidget(hint: 'Минус 1'),
          ],
        ),
      ],
    );
  }
}
