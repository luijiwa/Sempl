import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/theme.dart';

class FourStepWidget extends StatelessWidget {
  const FourStepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    logger.w(width * 0.073);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        SizedBox(height: height * 0.4),
      ],
    );
  }
}
