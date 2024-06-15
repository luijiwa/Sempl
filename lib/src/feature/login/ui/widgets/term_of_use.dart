import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/logger.dart';

class TermOfUse extends StatelessWidget {
  const TermOfUse(
      {required this.onChanged, required this.isChecked, super.key,});
  final void Function(bool?) onChanged;
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    const linkTextStyle = TextStyle(
      fontSize: 12,
      decoration: TextDecoration.underline,
      decorationColor: Color(0xFF99BFD4),
      color: Color(0xFF99BFD4),
    );
    const termOfUseTextStyle = TextStyle(
      fontSize: 12,
      color: AppThemeColor.black,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: isChecked,
          activeColor: const Color(0xFF99BFD4),
          side: WidgetStateBorderSide.resolveWith(
            (states) => const BorderSide(color: Color(0xFF99BFD4)),
          ),
          onChanged: onChanged,
        ),
        Flexible(
          child: AutoSizeText.rich(
            TextSpan(
              style: termOfUseTextStyle,
              children: [
                const TextSpan(text: 'Я соглашаюсь с '),
                TextSpan(
                  text: 'Условиями Пользовательского Соглашения',
                  style: linkTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => logger.info('Tap Here onTap'),
                ),
                const TextSpan(text: ' и '),
                TextSpan(
                  text: 'Политикой Конфиденциальности',
                  style: linkTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => logger.info('Tap Here onTap'),
                ),
              ],
            ),
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
