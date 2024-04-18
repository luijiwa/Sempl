part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppThemeColor.blueColor,
      brightness: Brightness.light,
    ),
    fontFamily: 'SourceSans3',
    scaffoldBackgroundColor: AppThemeColor.grey,
    extensions: const <ThemeExtension<dynamic>>[
      // ThemeColors.dark,
    ],
    appBarTheme: const AppBarTheme(
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: appBarTheme,
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        borderSide: BorderSide(width: 0.5, color: AppThemeColor.blueColor),
      ),
      hintStyle: TextStyle(
        fontFamily: 'SourceSans3',
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
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: AppThemeColor.blueColor,
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all<Color>(Colors.white),
      side: MaterialStateBorderSide.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return const BorderSide(color: AppThemeColor.blueColor);
          }
          return const BorderSide(color: AppThemeColor.blueColor);
        },
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
    ),
  );
}
