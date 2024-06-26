import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/widget/star_rating_widget.dart';

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
            ),
          ),
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
