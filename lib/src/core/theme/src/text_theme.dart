part of '../theme.dart';

extension CustomStyles on TextTheme {
  TextStyle get appBodyMedium => const TextStyle(
        fontFamily: 'SourceSans3',
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
        height: 1.2,
        color: AppThemeColor.black,
      );

  TextStyle get appBodySemiBold => const TextStyle(
        fontFamily: 'SourceSans3',
        fontWeight: FontWeight.w600,
        fontSize: 15,
        color: AppThemeColor.greyTwo,
      );

  TextStyle get appBodyLarge => const TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        fontSize: 15.0,
        color: AppThemeColor.black,
      );

  TextStyle get appTitleMedium => const TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        fontSize: 26,
        height: 1,
        color: AppThemeColor.black,
      );

  TextStyle get appProfileTitle => const TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        fontSize: 19,
        height: 1,
        color: AppThemeColor.black,
      );

  TextStyle get itemRemainingDayNotifier => const TextStyle(
        fontFamily: 'SourceSans3',
        fontWeight: FontWeight.w400,
        fontSize: 8.0,
        color: AppThemeColor.rose,
      );

  TextStyle get itemDateDelivery => const TextStyle(
        fontFamily: 'SourceSans3',
        fontWeight: FontWeight.w400,
        fontSize: 13.0,
        color: AppThemeColor.grisTwo,
      );
}
