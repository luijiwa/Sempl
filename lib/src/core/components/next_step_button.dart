import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class NextStepButton extends StatelessWidget {
  const NextStepButton({
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
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF99BFD4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              title,
              style: const TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 15,
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
