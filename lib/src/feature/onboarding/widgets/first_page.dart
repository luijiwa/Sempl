import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

import 'package:my_app/src/core/widget/star_rating_widget.dart';
import 'package:my_app/src/core/utils/logger.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFFEF7D),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Background 1.png',
            ),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: height * 0.18),
              Align(
                alignment: Alignment.centerLeft,
                child: AutoSizeText(
                  "КАК ЭТО РАБОТАЕТ?",
                  style: Theme.of(context).textTheme.appTitleMedium,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.1),
                  child: AutoSizeText(
                    "Посмотрите доступные образцы продуктов,\nзаполните форму, примите заказ, оставьте отзыв и получите накопительные баллы",
                    style: Theme.of(context).textTheme.appBodyMedium,
                    maxLines: 3,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Stack(
                alignment: AlignmentDirectional.topStart,
                clipBehavior: Clip.none,
                children: [
                  const ItemInFirstOnboardingPage(),
                  Positioned(
                      bottom: -height * 0.1,
                      left: width * 0.01,
                      child: const ColoredAdvantagesBoxes()),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemInFirstOnboardingPage extends StatelessWidget {
  const ItemInFirstOnboardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.017),
          SizedBox(
            height: height * 0.205,
            width: width * 0.507,
            child: Image.asset(
              'assets/images/serum.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: height * 0.0059),
          Text(
            "Aromenage".toUpperCase(),
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          AutoSizeText(
              "Гель-концентрат для стирки\nUniversal Delight с чабрецом 0,9л"
                  .toUpperCase(),
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 14,
                height: 1.2,
              )),
          SizedBox(height: height * 0.01),
          AutoSizeText(
            "5.0 из 89 отзывов".toUpperCase(),
            style: const TextStyle(
              fontSize: 8,
            ),
          ),
          SizedBox(height: height * 0.01),
          StarRatingWidget(size: width * 0.04),
          SizedBox(height: height * 0.021),
        ],
      ),
    );
  }
}

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
                    fontSize: fontSize, color: const Color(0xFFFAF379)),
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
                        fontSize: fontSize, color: const Color(0xFFB5A3F8)),
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
                        fontSize: fontSize, color: const Color(0xFF496969)),
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
