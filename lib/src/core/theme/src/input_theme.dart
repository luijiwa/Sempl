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
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        borderSide: BorderSide(width: 0.5, color: AppThemeColor.rose),
      ),
    );
  }

  InputDecoration get searchInput {
    return const InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      filled: true,
      fillColor: Color(0xffEEEEEE),
    );
  }
}
