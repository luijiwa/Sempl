import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

extension BuildContextExt on BuildContext {
  ThemeTextStyles get text => Theme.of(this).extension<ThemeTextStyles>()!;

  // ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;
}
