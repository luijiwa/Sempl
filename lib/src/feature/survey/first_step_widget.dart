import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/theme.dart';

class FirstStepWidget extends StatelessWidget {
  const FirstStepWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double bottomOffset = 0.001 * height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.05),
        SizedBox(height: height * 0.03),
        const AutoSizeText(
          'ПЕРСОНАЛЬНАЯ ИНФОРМАЦИЯ',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'DrukCyr',
            color: Colors.black,
          ),
          maxLines: 1,
        ),
        SizedBox(height: 0.01 * height),
        const TextInputField(hintText: 'Имя'),
        const TextInputField(hintText: 'Фамилия'),
        const DropdownCustomWidget(
            hint: 'Пол', listItems: ['Мужской', 'Женский', 'Не указывать']),
        SizedBox(height: 0.001 * height),
        const TextInputField(hintText: 'Дата рождения'),
        SizedBox(height: 0.001 * height),
        const TextInputField(hintText: 'Имя в приложении'),
        SizedBox(height: 0.001 * height),
        const TextInputField(hintText: 'Почта'),
        SizedBox(height: 0.001 * height),
        const PasswordGroupWidget(),
        SizedBox(height: 0.01 * height),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AutoSizeText(
              'Коммуникация',
              textAlign: TextAlign.start,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const Flexible(
                  child: AutoSizeText(
                    'Я хочу получать рекламные электронные письма и информацию о приложениях',
                    maxLines: 3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class PasswordCheckItem extends StatelessWidget {
  const PasswordCheckItem({
    super.key,
    required this.text,
    this.maxLines = 1,
  });
  final String text;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.check_rounded,
            size: 24,
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            child: AutoSizeText(
              text,
              style: const TextStyle(
                  fontFamily: 'SourceSansPro', color: Colors.black),
              maxLines: maxLines,
            ),
          ),
        ],
      ),
    );
  }
}

class DropdownCustomWidget extends StatelessWidget {
  const DropdownCustomWidget({
    super.key,
    required this.listItems,
    required this.hint,
  });
  final List<String> listItems;
  final String hint;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return DropdownButtonFormField<String>(
      dropdownColor: Colors.white,
      isExpanded: true,
      iconSize: 24,
      icon:
          const Icon(Icons.expand_more_rounded, color: AppThemeColor.blueColor),
      items: listItems
          .map((item) => DropdownMenuItem(
              value: item,
              child: Text(item,
                  style: const TextStyle(fontFamily: 'SourceSansPro'))))
          .toList(),
      hint: Text(hint,
          style: const TextStyle(
              fontFamily: 'SourceSansPro', color: AppThemeColor.gris)),
      decoration: const InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(width: 0.5, color: AppThemeColor.blueColor),
        ),
      ),
      value: null,
      onChanged: (_) {},
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Выберите из списка';
        }
        return null;
      },
      onTap: () {
        final RenderBox? renderBox = context.findRenderObject() as RenderBox?;
        final rect = renderBox!.localToGlobal(Offset.zero) & renderBox.size;
        if (rect != null &&
            rect.bottom > height &&
            rect.bottom < height - 150) {
          Scrollable.of(context).position.jumpTo(150 - (height - rect.bottom));
        }
      },
    );
  }
}

class PasswordGroupWidget extends StatelessWidget {
  const PasswordGroupWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInputField(hintText: 'Пароль'),
        PasswordCheckItem(text: 'Заглавные латинские буквы: от А до Я'),
        PasswordCheckItem(text: 'Строчные латинские буквы: от A до Z'),
        PasswordCheckItem(text: 'Числа от 0 до 9'),
        PasswordCheckItem(
          text:
              '''Символы: (пробел) ! " # \$ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _\` { | } ~''',
          maxLines: 2,
        ),
        TextInputField(hintText: 'Повторите пароль'),
      ],
    );
  }
}
