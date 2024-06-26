import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/constant/generated/assets.gen.dart';
import 'package:sempl/src/core/theme/theme.dart';

import 'package:sempl/src/core/widget/star_rating_widget.dart';
import 'package:sempl/src/feature/onboarding/widgets/colored_advantages_boxes.dart';
import 'package:sempl/src/feature/onboarding/widgets/item_in_first_onboarding_page.dart';

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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.background2.path,
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
                    "Посмотрите доступные образцы семплов, заполните форму, получите заказ, оставьте отзыв и продолжайте пробовать новые продукты!",
                    style: Theme.of(context).textTheme.appBodyMedium,
                    maxLines: 4,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const ItemInFirstOnboardingPage(),
                  Positioned(
                    bottom: -height * 0.1,
                    left: width * 0.01,
                    child: const ColoredAdvantagesBoxes(),
                  ),
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
