import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/components/required_input_field.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/src/core/theme/theme.dart';

class SecondStepWidget extends StatelessWidget {
  const SecondStepWidget({super.key, required this.onNextPage});
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.035),
          const AutoSizeText(
            'АДРЕС ДОСТАВКИ',
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'DrukCyr',
            ),
            maxLines: 1,
          ),
          SizedBox(height: height * 0.016),
          const RequiredInputField(
            hintText: 'Город',
          ),
          const SizedBox(height: 4),
          const RequiredInputField(
            hintText: 'Улица',
          ),
          const SizedBox(height: 4),
          const Row(
            children: [
              Expanded(
                child: RequiredInputField(hintText: 'Номер дома'),
              ),
              SizedBox(width: 4),
              Expanded(
                child: RequiredInputField(hintText: 'Номер квартиры'),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Row(
            children: [
              Expanded(child: TextInputField(hintText: 'Подъезд')),
              SizedBox(width: 4),
              Expanded(
                child: RequiredInputField(hintText: 'Почтовый индекс'),
              ),
            ],
          ),
          const SizedBox(height: 8),
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
          const Spacer(),
          NextStepButton(title: 'ШАГ 3', onPressed: onNextPage),
          const BottomPadding(),
        ],
      ),
    );
  }
}
