import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/theme.dart';

class FourStepWidget extends StatelessWidget {
  const FourStepWidget({super.key, required this.onNextPage});
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final double bottomOffset =
        height * 0.0639 - MediaQuery.of(context).padding.bottom;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.035),
          const AutoSizeText(
            'ВАШИ СОЦИАЛЬНЫЕ СЕТИ',
            style: TextStyle(fontSize: 30, fontFamily: 'DrukCyr'),
            maxLines: 1,
          ),
          SizedBox(height: height * 0.022),
          Padding(
            padding: EdgeInsets.only(right: width * 0.073), //30

            child: const AutoSizeText(
              'Некоторые из наших тестов продукта будут включать участие в социальных сетях. \nУкажите ссылки на профиля сейчас, чтобы получить признание и вознаграждение за ваш вклад',
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
          NextStepButton(title: 'ШАГ 4', onPressed: onNextPage),
          SizedBox(height: bottomOffset),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}
