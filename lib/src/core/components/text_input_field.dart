import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final padding = height * 0.0161; // 15
    log(padding.toString());

    return TextField(
      decoration: inputDecoration.copyWith(hintText: hintText),
    );
  }
}
