import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/widget/bottom_padding.dart';
import 'package:my_app/src/core/widget/checkbox_row.dart';
import 'package:my_app/src/core/widget/next_step_button.dart';
import 'package:my_app/src/feature/survey/ui/widgets/password_group_widget.dart';
import 'package:my_app/src/feature/survey/ui/widgets/personal_data_fields_widget.dart';
import 'package:my_app/src/feature/survey/ui/widgets/questions_padding.dart';

class FirstStepWidget extends StatelessWidget {
  const FirstStepWidget({
    super.key,
    required this.onNextPage,
  });
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.035),
            const PersonalDataFieldsWidget(),
            const QuestionsPadding(),
            const PasswordGroupWidget(),
            const QuestionsPadding(),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AutoSizeText(
                  'Коммуникация:',
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: height * 0.006),
                const CheckboxRowWidget(
                  title:
                      'Я хочу получать рекламные электронные письма и информацию о приложениях',
                  value: true,
                  maxLines: 2,
                )
              ],
            ),
            SizedBox(height: height * 0.02),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AutoSizeText(
                  'Конфиденциальность:',
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: height * 0.006),
                const CheckboxRowWidget(
                  title: 'Я принимаю все правила',
                  value: false,
                  maxLines: 2,
                )
              ],
            ),
            SizedBox(height: height * 0.0681),
            NextStepButton(
              title: 'ШАГ 2',
              onPressed: onNextPage,
              enable: false,
            ),
            const BottomPadding(),
          ],
        ),
      ),
    );
  }
}
