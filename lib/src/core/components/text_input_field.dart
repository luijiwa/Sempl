import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/src/core/theme/theme.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    required this.hintText,
    this.inputFormatter,
  });

  final String hintText;
  final TextInputFormatter? inputFormatter;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final padding = height * 0.0161; // 15
    log(padding.toString());

    return TextField(
      inputFormatters: inputFormatter != null ? [inputFormatter!] : null,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: height * 0.013, horizontal: height * 0.023),
        hintText: hintText,
      ),
    );
  }
}
