part of '../theme.dart';

ThemeData createLightTheme() => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppThemeColor.blueColor,
      ),
      fontFamily: 'SourceSans3',
      scaffoldBackgroundColor: AppThemeColor.grey,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppThemeColor.blueColor,
        selectionColor: AppThemeColor.blueColor.withOpacity(0.3),
        selectionHandleColor: AppThemeColor.blueColor,
      ),
      primaryColor: AppThemeColor.blueColor,
      extensions: <ThemeExtension<dynamic>>[
        // ThemeColors.dark,
        ThemeTextStyles.light,
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
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(width: 0.5, color: AppThemeColor.rose),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(width: 0.5, color: AppThemeColor.rose),
        ),
        alignLabelWithHint: true,
        filled: true,
        fillColor: Colors.white,
        errorStyle: TextStyle(fontSize: 0),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: AppThemeColor.blueColor,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 1,
            color: AppThemeColor.blueColor,
          ),
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
