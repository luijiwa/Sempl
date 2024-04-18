import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/src/feature/survey/ui/widgets/password_check_item.dart';

class PasswordGroupWidget extends StatelessWidget {
  const PasswordGroupWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextInputField(hintText: 'Пароль'),
        const SizedBox(height: 3),
        const PasswordCheckItem(
            text: 'Заглавные латинские буквы: от А до Я', status: true),
        const SizedBox(height: 5),
        const PasswordCheckItem(
            text: 'Строчные латинские буквы: от A до Z', status: false),
        const SizedBox(height: 5),
        const PasswordCheckItem(text: 'Числа от 0 до 9', status: false),
        const SizedBox(height: 5),
        const PasswordCheckItem(
          text:
              '''Символы: (пробел) ! " # \$ % & ' ( ) * + , - . / : ; < = > ? @ [  ] ^ _` { | } ~''',
          maxLines: 2,
          status: false,
        ),
        SizedBox(height: height * 0.021),
        const TextInputField(hintText: 'Повторите пароль'),
      ],
    );
  }
}
