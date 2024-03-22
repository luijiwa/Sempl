import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class NextStepButton extends StatelessWidget {
  const NextStepButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.enable = true,
  });
  final String title;
  final VoidCallback onPressed;
  final bool enable;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 0.058 * height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: enable ? Colors.white : Colors.grey,
          backgroundColor:
              enable ? const Color(0xFF99BFD4) : AppThemeColor.grisTwo,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              title,
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 15,
                color: enable ? AppThemeColor.grey : AppThemeColor.gris,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              size: 15,
              color: enable ? AppThemeColor.grey : AppThemeColor.gris,
            )
          ],
        ),
      ),
    );
  }
}
