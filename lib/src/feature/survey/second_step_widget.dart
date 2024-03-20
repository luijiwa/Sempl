import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/theme.dart';

class SecondStepWidget extends StatelessWidget {
  const SecondStepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final inputDecorationTheme = Theme.of(context).inputDecorationTheme;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AutoSizeText(
          'АДРЕС ДОСТАВКИ',
          style: TextStyle(fontSize: 30, fontFamily: 'DrukCyr'),
          maxLines: 1,
        ),
        const TextInputField(
          hintText: 'Город',
        ),
        const TextInputField(
          hintText: 'Улица',
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: inputDecoration.copyWith(hintText: 'Номер дома'),
              ),
            ),
            Expanded(
              child: TextField(
                decoration:
                    inputDecoration.copyWith(hintText: 'Номер квартиры'),
              ),
            ),
          ],
        ),
        SizedBox(height: height * 0.01),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: inputDecoration.copyWith(hintText: 'Подъезд'),
              ),
            ),
            Expanded(
              child: TextField(
                decoration:
                    inputDecoration.copyWith(hintText: 'Почтовый индекс'),
              ),
            ),
          ],
        ),
        SizedBox(height: height * 0.01),
        const AutoSizeText(
          '*Поля обязательные для заполнения',
          style: TextStyle(
              color: AppThemeColor.rose,
              fontFamily: 'SourceSansPro',
              fontSize: 12),
          maxLines: 1,
          minFontSize: 10,
        ),
        const AutoSizeText(
          'После регистрации адрес можно изменить в личном кабинете',
          style: TextStyle(
              color: Colors.black, fontFamily: 'SourceSansPro', fontSize: 12),
          maxLines: 1,
          minFontSize: 10,
        ),
      ],
    );
  }
}
