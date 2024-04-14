import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

extension CustomElevatedButtonStyles on ElevatedButtonThemeData {
  ButtonStyle get appButton {
    return ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AppThemeColor.blueColor,
    );
  }
}
