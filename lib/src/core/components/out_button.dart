import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

class OutButton extends StatelessWidget {
  const OutButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 0.055 * height,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 1,
            color: AppThemeColor.blueColor,
          ),
        ),
        child: AutoSizeText(
          title,
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: width > 320 ? 15 : 12,
            color: AppThemeColor.black,
          ),
        ),
      ),
    );
  }
}
