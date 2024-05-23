import 'package:flutter/material.dart';
import 'package:sempl/src/feature/survey_order/ui/widgets/question_widget.dart';

class FeedbackStepOne extends StatelessWidget {
  const FeedbackStepOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final text = [
      'Сладкий вкус',
      'Уменьшает и предотвращает образование пятен',
      'Держите дыхание свежим',
      'Многофункциональный полоскание рта (например, Listerine Total Care)',
      'Помогает поддерживать крепкие зубы и здоровые десны'
    ];
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: text.length,
            itemBuilder: (context, index) {
              return QuestionWidget(index: index + 1, text: text);
            },
            separatorBuilder: (__, _) => SizedBox(height: width * 0.035),
          ),
        ),
      ],
    );
  }
}
