part of '../theme.dart';

extension CustomInputFormStyles on InputDecorationTheme {
  InputDecoration get defaultInput {
    return const InputDecoration(
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
      alignLabelWithHint: true,
      filled: true,
      fillColor: Colors.white,
    );
  }
}