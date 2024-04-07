import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/components/stack2.dart';
import 'package:my_app/src/core/components/star_rating_widget.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/core/utils/logger.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    logger.w(width * 0.364); //height * 0.0118
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
                  style: Theme.of(context).textTheme.appBodyLarge,
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
              Stack2(
                children: [
                  const ItemInFirstOnboardingPage(),
                  Positioned(
                      bottom: -height * 0.08,
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
    logger.w(width * 0.583);
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.017),
          SizedBox(
            height: height * 0.205,
            width: width * 0.507,
            child: Image.asset(
              'assets/images/serum.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: height * 0.0059),
          Text(
            "Aromenage".toUpperCase(),
            style:
                const TextStyle(fontSize: 15, fontFamily: 'SourceSansProBold'),
          ),
          AutoSizeText(
              "Гель-концентрат для стирки\nUniversal Delight с чабрецом 0,9л"
                  .toUpperCase(),
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'SourceSansPro',
                height: 1.2,
              )),
          SizedBox(height: height * 0.01),
          AutoSizeText(
            "5.0 из 89 отзывов".toUpperCase(),
            style: const TextStyle(fontSize: 8, fontFamily: 'SourceSansPro'),
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
    const textStyle = TextStyle(fontFamily: 'SourceSansProBold', fontSize: 10);
    final boxStyle = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    );
    const boxPadding = EdgeInsets.symmetric(horizontal: 10, vertical: 10);
    logger.w(width * 0.01273);
    return SizedBox(
      height: height * 0.18,
      width: width * 0.364,
      child: Stack(
        children: [
          Positioned(
            bottom: height * 0.011738,
            left: width * 0.01273,
            child: Container(
              padding: boxPadding,
              decoration: boxStyle.copyWith(color: const Color(0xFFFFBBF4)),
              child: Text(
                'попробовать продукт'.toUpperCase(),
                style: textStyle.copyWith(color: const Color(0xFFFAF379)),
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.023476, // 0.011738
            left: width * 0.14003,
            child: Transform.rotate(
              angle: -110 * (pi / 180),
              child: Container(
                decoration: boxStyle.copyWith(color: const Color(0xFFFFEF7D)),
                padding: boxPadding,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    'читать отзывы'.toUpperCase(),
                    style: textStyle.copyWith(color: const Color(0xFFB5A3F8)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.076297,
            left: width * 0.10184,
            child: Transform.rotate(
              angle: -70 * (pi / 180),
              child: Container(
                padding: boxPadding,
                decoration: boxStyle.copyWith(color: const Color(0xFFCFF3E9)),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    'оставить оценку'.toUpperCase(),
                    style: textStyle.copyWith(color: const Color(0xFF496969)),
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
