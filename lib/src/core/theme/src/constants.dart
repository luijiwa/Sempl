part of '../theme.dart';

abstract final class AppThemeColor {
  static const Color primaryColor = Color(0xFFE91E63);
  static const Color blueColor = Color(0xFF99BFD4);
  static const Color gris = Color(0xFFCECECE);
  static const Color grisTwo = Color(0xFF8E8E8E);
  static const Color rose = Color(0xFFE25C74);
  static const Color grey = Color(0xFFF8F8F8);
  static const Color black = Color(0xFF252525);
  static const Color purple = Color(0xFFB5A3F8);
  static const Color yellow = Color(0xFFFFEF7D);
  static const Color greyTwo = Color(0xFF545454);
  static const Color pink = Color(0xFFFFBBF4);
  static const Color green = Color(0xFF73B481);
}

const appBarTheme = TextStyle(
  fontFamily: 'Inter',
  fontWeight: FontWeight.w700,
  fontSize: 26,
  height: 1,
  color: AppThemeColor.black,
);
const inputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
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
const feedbackBiginputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(width: 0.5, color: AppThemeColor.blueColor),
  ),
  hintStyle: TextStyle(
    fontSize: 14,
    color: AppThemeColor.gris,
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
  ),
);
const dropdownDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    borderSide: BorderSide(width: 1, color: AppThemeColor.blueColor),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    borderSide: BorderSide(width: 1, color: AppThemeColor.blueColor),
  ),
  hintStyle: TextStyle(
    fontSize: 14,
    color: AppThemeColor.black,
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    borderSide: BorderSide(width: 1, color: AppThemeColor.gris),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    borderSide: BorderSide(width: 1, color: AppThemeColor.gris),
  ),
);

const linkTextStyle = TextStyle(
  fontSize: 12,
  decoration: TextDecoration.underline,
  decorationColor: Color(0xFF99BFD4),
  color: Color(0xFF99BFD4),
);

const defaultText = TextStyle(
  fontSize: 14,
  color: AppThemeColor.black,
);
