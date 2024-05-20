import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/theme/theme.dart';

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
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 0.1186228814 * width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
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
                fontSize: width > 320 ? 15 : 12,
                color: enable ? AppThemeColor.grey : AppThemeColor.gris,
              ),
            ),
            SvgPicture.asset(
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              'assets/icons/arrow_right.svg',
            ),
          ],
        ),
      ),
    );
  }
}
