import 'package:flutter/material.dart';

abstract final class AppThemeColor {
  static const Color primaryColor = Color(0xFFE91E63);
  static const Color blueColor = Color(0xFF99BFD4);
  static const Color gris = Color(0xFFCECECE);
  static const Color grisTwo = Color(0xFF8E8E8E);
  static const Color rose = Color(0xFFE25C74);
}

const inputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    borderSide: BorderSide(width: 0.5, color: AppThemeColor.blueColor),
  ),
  hintStyle: TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: 14,
    color: AppThemeColor.gris,
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
  ),
);
const linkTextStyle = TextStyle(
  fontSize: 12,
  fontFamily: 'SourceSansPro',
  decoration: TextDecoration.underline,
  decorationColor: Color(0xFF99BFD4),
  color: Color(0xFF99BFD4),
);
