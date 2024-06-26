import 'dart:math';
import 'package:flutter/material.dart';

class ColoredAdvantagesBoxes extends StatelessWidget {
  const ColoredAdvantagesBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final boxPadding = EdgeInsets.all(height * 0.011);
    final double fontSize = min(width * 0.033, height * 0.013);
    const textStyle = TextStyle(fontWeight: FontWeight.w700);
    final double borderRadius = min(width * 0.027, 10);
    final boxStyle = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(borderRadius),
    );

    // Пропорциональные значения для позиционирования
    final box1Bottom = height * 0.011738;
    final box2Bottom = height * 0.023476;
    final box3Bottom = height * 0.076297;
    final box2Left = width * 0.14003;
    final box3Left = width * 0.10184;

    return SizedBox(
      height: width * 0.41,
      width: width * 0.41,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Positioned(
            bottom: box1Bottom,
            left: width * 0.01273,
            child: Container(
              padding: boxPadding,
              decoration: boxStyle.copyWith(color: const Color(0xFFFFBBF4)),
              child: Text(
                'попробовать продукт'.toUpperCase(),
                style: textStyle.copyWith(
                  fontSize: fontSize,
                  color: const Color(0xFFFAF379),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: box2Bottom,
            left: box2Left,
            child: Transform.rotate(
              angle: -110 * (pi / 180),
              child: Container(
                decoration: boxStyle.copyWith(color: const Color(0xFFFFEF7D)),
                padding: boxPadding,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    'читать отзывы'.toUpperCase(),
                    style: textStyle.copyWith(
                      fontSize: fontSize,
                      color: const Color(0xFFB5A3F8),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: box3Bottom,
            left: box3Left,
            child: Transform.rotate(
              angle: -70 * (pi / 180),
              child: Container(
                padding: boxPadding,
                decoration: boxStyle.copyWith(color: const Color(0xFFCFF3E9)),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    'оставить оценку'.toUpperCase(),
                    style: textStyle.copyWith(
                      fontSize: fontSize,
                      color: const Color(0xFF496969),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
