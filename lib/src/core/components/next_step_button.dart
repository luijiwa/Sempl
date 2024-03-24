import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      height: 0.055 * height,
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
              '$title ',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 15,
                color: enable ? AppThemeColor.grey : AppThemeColor.gris,
              ),
            ),
            SvgPicture.asset(
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              'assets/images/arrow_right.svg',
            ),
          ],
        ),
      ),
    );
  }
}
