import 'package:flutter/material.dart';
import 'package:sempl/src/feature/survey/ui/widgets/password_check_item.dart';

@Deprecated('Удалено из дизайна')
class PasswordGroupWidget extends StatelessWidget {
  const PasswordGroupWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.sizeOf(context).width;

    final edgeInsets = EdgeInsets.symmetric(
        vertical: width * 0.02803813559, horizontal: width * 0.0496059322);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Пароль',
          ),
        ),
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
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Повторите пароль',
          ),
        ),
      ],
    );
  }
}
