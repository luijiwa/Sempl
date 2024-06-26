import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/checkbox_row.dart';
import 'package:sempl/src/core/widget/custom_app_bar.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';

class FirstStepSurveyOrderWidget extends StatelessWidget {
  const FirstStepSurveyOrderWidget({required this.onNextPage, super.key});
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    // logger.i(height * 0.011738);
    // logger.i(width * 0.02545);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * 0.31,
          child: const CustomAppBar(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22.0,
          ).copyWith(
              right: 0.07635 * width,
              top: height * 0.0211284,
              bottom: height * 0.0152594,),
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
            title: 'Продолжить '.toUpperCase(),
            onPressed: onNextPage,
          ),
        ),
        const BottomPadding(),
      ],
    );
  }
}
