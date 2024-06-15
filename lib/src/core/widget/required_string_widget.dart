import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class RequiredStringWidget extends StatelessWidget {
  const RequiredStringWidget({required this.hintText, super.key});
  final String hintText;
  @override
  Widget build(BuildContext context) => AutoSizeText.rich(
      TextSpan(
        text: hintText,
        children: const [
          TextSpan(
            text: '*',
            style: TextStyle(
              color: Colors.red,
              fontSize: 14,
            ),
          ),
        ],
      ),
      style: const TextStyle(
        fontSize: 14,
        color: AppThemeColor.gris,
      ),
      minFontSize: 5,
      maxLines: 1,
    );
}
