import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    required this.hintText, super.key,
    this.inputFormatter,
  });

  final String hintText;
  final TextInputFormatter? inputFormatter;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.sizeOf(context).width;

    final padding = height * 0.0161; // 15
    log(padding.toString());

    return TextField(
      inputFormatters: inputFormatter != null ? [inputFormatter!] : null,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: width * 0.02803813559, horizontal: width * 0.0496059322,),
        hintText: hintText,
      ),
    );
  }
}
