import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/theme/theme.dart';

class FeedbackStepFive extends StatelessWidget {
  const FeedbackStepFive({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              top: width * 0.08,
              bottom: width * 0.12,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.13),
                  child: AutoSizeText(
                    'Оцените товар по 5-бальной шкале',
                    style: Theme.of(context).textTheme.appBodyMedium,
                    maxLines: 1,
                  ),
                ),
                SizedBox(height: width * 0.035),
                const StarRatingPickWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class StarRatingPickWidget extends StatelessWidget {
  const StarRatingPickWidget({
    super.key,
    this.hitTestSizeFactor = 1.0,
  });

  final double hitTestSizeFactor;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return RatingBar(
      itemSize: width * 0.05859,
      glow: false,
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
      updateOnDrag: true,
      ratingWidget: RatingWidget(
        full: SvgPicture.asset(
          width: width * 0.05599,
          'assets/icons/star_filled.svg',
          colorFilter:
              const ColorFilter.mode(AppThemeColor.blueColor, BlendMode.srcIn),
        ),
        half: const Icon(
          Icons.star_rounded,
          color: AppThemeColor.blueColor,
        ),
        empty: SvgPicture.asset(
          width: width * 0.05599,
          'assets/icons/star_outline.svg',
          colorFilter:
              const ColorFilter.mode(AppThemeColor.blueColor, BlendMode.srcIn),
        ),
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
