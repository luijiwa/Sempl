import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/checkbox_row.dart';
import 'package:my_app/src/core/components/dropdown_custom_widget.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/src/feature/survey/thirth_step_widget.dart';
import 'package:my_app/theme.dart';

class FirstStepWidget extends StatelessWidget {
  const FirstStepWidget({
    super.key,
    required this.onNextPage,
  });
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double bottomOffset =
        height * 0.059 - MediaQuery.of(context).padding.bottom;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.035),
            const AutoSizeText(
              'ПЕРСОНАЛЬНАЯ ИНФОРМАЦИЯ',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'DrukCyr',
                color: Colors.black,
              ),
              maxLines: 1,
            ),
            SizedBox(height: height * 0.0205),
            const TextInputField(hintText: 'Имя'),
            const SizedBox(height: 4),
            const TextInputField(hintText: 'Фамилия'),
            const SizedBox(height: 4),
            const DropdownCustomWidget(
                hint: 'Пол', listItems: ['Мужской', 'Женский', 'Не указывать']),
            const QuestionsPadding(),
            const TextInputField(hintText: 'Дата рождения'),
            const QuestionsPadding(),
            const TextInputField(hintText: 'Имя в приложении'),
            const QuestionsPadding(),
            const TextInputField(hintText: 'Почта'),
            const QuestionsPadding(),
            const PasswordGroupWidget(),
            const QuestionsPadding(),
            const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Коммуникация:',
                  textAlign: TextAlign.start,
                ),
                CheckboxRow(
                  title:
                      'Я хочу получать рекламные электронные письма и информацию о приложениях',
                  value: false,
                  maxLines: 2,
                )
              ],
            ),
            const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Конфиденциальность:',
                  textAlign: TextAlign.start,
                ),
                CheckboxRow(
                  title: 'Я принимаю все правила',
                  value: false,
                  maxLines: 2,
                )
              ],
            ),
            SizedBox(height: height * 0.0681),
            NextStepButton(title: 'ШАГ 2', onPressed: onNextPage),
            const BottomPadding(),
          ],
        ),
      ),
    );
  }
}

class PasswordCheckItem extends StatelessWidget {
  const PasswordCheckItem({
    super.key,
    required this.text,
    this.maxLines = 1,
    required this.status,
  });
  final String text;
  final int maxLines;
  final bool status;
  @override
  Widget build(BuildContext context) {
    final textColor = status ? AppThemeColor.blueColor : AppThemeColor.grisTwo;
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check_rounded,
            size: 24,
            color: textColor,
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            child: AutoSizeText(
              text,
              style: TextStyle(fontFamily: 'SourceSansPro', color: textColor),
              maxLines: maxLines,
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordGroupWidget extends StatelessWidget {
  const PasswordGroupWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextInputField(hintText: 'Пароль'),
        const PasswordCheckItem(
            text: 'Заглавные латинские буквы: от А до Я', status: true),
        const PasswordCheckItem(
            text: 'Строчные латинские буквы: от A до Z', status: false),
        const PasswordCheckItem(text: 'Числа от 0 до 9', status: false),
        const PasswordCheckItem(
          text:
              '''Символы: (пробел) ! " # \$ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _\` { | } ~''',
          maxLines: 2,
          status: false,
        ),
        SizedBox(height: height * 0.021),
        const TextInputField(hintText: 'Повторите пароль'),
      ],
    );
  }
}
