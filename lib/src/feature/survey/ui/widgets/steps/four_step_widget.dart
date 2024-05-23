import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/core/widget/text_input_field.dart';
import 'package:sempl/src/core/theme/theme.dart';

class FourStepWidget extends StatelessWidget {
  const FourStepWidget({super.key, required this.onNextPage});
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.035),
          AutoSizeText(
            'ВАШИ СОЦИАЛЬНЫЕ СЕТИ',
            style: Theme.of(context).textTheme.appProfileTitle,
            maxLines: 1,
          ),
          SizedBox(height: height * 0.016),
          Padding(
            padding: EdgeInsets.only(right: width * 0.05), //30

            child: const AutoSizeText(
              'Некоторые из наших тестов продукта будут включать участие в социальных сетях.\nУкажите ссылки на профили сейчас, чтобы получить признание и вознаграждение за ваш вклад',
              maxLines: 5,
            ),
          ),
          SizedBox(height: height * 0.035),
          const TextInputField(
            hintText: 'VK',
          ),
          SizedBox(height: height * 0.005),
          const TextInputField(
            hintText: 'Telegram',
          ),
          const Spacer(),
          NextStepButton(title: 'ШАГ 5', onPressed: onNextPage),
          const BottomPadding(),
        ],
      ),
    );
  }
}
