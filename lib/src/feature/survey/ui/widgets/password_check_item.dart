import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

class PasswordCheckItem extends StatelessWidget {
  const PasswordCheckItem({
    super.key,
    required this.text,
    this.maxLines = 1,
    required this.status,
  });
  final String text;
  final int maxLines;
  final bool status;
  @override
  Widget build(BuildContext context) {
    final textColor = status ? AppThemeColor.blueColor : AppThemeColor.grisTwo;
    final checkColor = status ? AppThemeColor.blueColor : AppThemeColor.gris;
    final weight = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: weight * 0.07),
      child: SizedBox(
        width: double.maxFinite,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_rounded,
              size: 24,
              color: checkColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Flexible(
              child: AutoSizeText(
                text,
                style: TextStyle(fontFamily: 'SourceSansPro', color: textColor),
                maxLines: maxLines,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
