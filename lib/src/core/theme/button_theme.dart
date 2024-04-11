import 'package:flutter/material.dart';

extension CustomStyles on ButtonTheme {
  ButtonStyle get appButton {
    return ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: const Color(0xFF99BFD4),
    );
  }
}
