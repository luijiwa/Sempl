import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/theme.dart';

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
    return SizedBox(
      height: 0.058 * height,
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
          style: const TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
