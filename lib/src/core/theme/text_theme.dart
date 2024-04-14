import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

extension CustomStyles on TextTheme {
  TextStyle get appBodyMedium {
    return const TextStyle(
      fontFamily: 'SourceSansPro',
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
      height: 1.2,
      color: Colors.black,
    );
  }

  TextStyle get appBodySemiBold {
    return const TextStyle(
      fontFamily: 'SourceSansProSemiBold',
      fontSize: 15,
      color: AppThemeColor.greyTwo,
    );
  }

  TextStyle get appBodyLarge {
    return const TextStyle(
      fontFamily: 'DrukCyr',
      fontWeight: FontWeight.w700,
      fontSize: 15.0,
      color: Colors.black,
    );
  }

  TextStyle get appTitleMedium {
    return const TextStyle(
      fontFamily: 'DrukCyr',
      fontWeight: FontWeight.w700,
      fontSize: 31.55,
      height: 1,
      color: Colors.black,
    );
  }

  TextStyle get itemRemainingDayNotifier {
    return const TextStyle(
      fontFamily: 'SourceSansPro',
      fontWeight: FontWeight.w400,
      fontSize: 8.0,
      color: AppThemeColor.rose,
    );
  }

  TextStyle get itemDateDelivery {
    return const TextStyle(
      fontFamily: 'SourceSansPro',
      fontWeight: FontWeight.w400,
      fontSize: 13.0,
      color: AppThemeColor.grisTwo,
    );
  }
}
