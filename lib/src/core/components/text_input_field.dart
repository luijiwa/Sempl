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
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: height * 0.013, horizontal: height * 0.023),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(width: 0.5, color: AppThemeColor.blueColor),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: 'SourceSansPro',
          fontSize: 14,
          color: AppThemeColor.gris,
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
        ),
        alignLabelWithHint: true,
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
