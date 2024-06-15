import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class OutButton extends StatelessWidget {
  const OutButton({
    required this.title, required this.onPressed, super.key,
  });
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 0.1186228814 * width,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: AppThemeColor.blueColor,
          ),
        ),
        child: AutoSizeText(
          title,
          style: TextStyle(
            fontSize: width > 320 ? 15 : 12,
            color: AppThemeColor.black,
          ),
        ),
      ),
    );
  }
}
