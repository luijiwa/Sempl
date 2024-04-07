import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/checkbox_row.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/theme/theme.dart';

class FirstStepSurveyOrderWidget extends StatelessWidget {
  const FirstStepSurveyOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.69,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22.0,
            ).copyWith(right: 30.0, top: 18, bottom: 13),
            child: AutoSizeText(
              '''В рамках тестирования продукта мы будем обрабатывать данные, которые вы нам предоставляете, в соответствии с нашей политикой конфиденциальности.\n\nДеловыми партнерами, с которыми мы будем делиться данными, являются производители продуктов, поставщики уведомлений о синдикации и рекламодатели.''',
              style: Theme.of(context).textTheme.appBodyMedium,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.0),
            child: CheckboxRowWidget(title: 'Я принимаю', value: true),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: NextStepButton(
              title: 'continue'.toUpperCase(),
              onPressed: () {},
            ),
          ),
          const BottomPadding(),
        ],
      ),
    );
  }
}
