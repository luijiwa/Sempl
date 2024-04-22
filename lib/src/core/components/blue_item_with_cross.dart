import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

class BlueItemWithCross extends StatelessWidget {
  final String text;

  const BlueItemWithCross({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: AppThemeColor.blueColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.02036, vertical: width * 0.01527),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.2),
              ),
              padding: const EdgeInsets.all(4.0),
              child: const Icon(
                Icons.close,
                color: AppThemeColor.blueColor,
                size: 14.0,
              ),
            ),
            const SizedBox(width: 4.0),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
