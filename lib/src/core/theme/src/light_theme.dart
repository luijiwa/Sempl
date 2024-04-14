part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    fontFamily: 'OpenSans',
    scaffoldBackgroundColor: AppThemeColor.black,
    extensions: const <ThemeExtension<dynamic>>[
      // ThemeColors.dark,
    ],
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      // titleTextStyle: ,
      centerTitle: true,
    ),
    inputDecorationTheme: const InputDecorationTheme(
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
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppThemeColor.green,
        // foregroundColor: AppThemeColor.white,
        // textStyle: buttonTextStyle,
      ),
    ),
  );
}
