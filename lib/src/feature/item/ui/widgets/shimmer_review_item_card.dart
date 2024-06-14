import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/star_rating_widget.dart';

class ShimmerReviewItemCard extends StatelessWidget {
  final double width;
  final double height;
  const ShimmerReviewItemCard({
    required this.width,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(children: [
          SizedBox(
            width: width * 0.1,
            height: width * 0.1,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppThemeColor.blueColor,
                    border: Border.all(
                      color: AppThemeColor.blueColor,
                      width: 1.0,
                    ),
                  ),
                ),
                const ClipOval(
                  child: Material(
                      shape: CircleBorder(), color: Colors.transparent),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: width * 0.12,
            height: width * 0.02,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StarRatingWidget(
                size: height * 0.038175,
              ),
              Container(
                width: width * 0.1,
                height: width * 0.02,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(height: height * 0.01),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: double.maxFinite,
          height: width * 0.18,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
        ),
        Row(
          children: [
            for (int i = 0; i < 3; i++)
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: i == 0
                        ? 0
                        : 5, // Если первый элемент, то отступ слева равен 0, иначе 5
                    top: 10,
                    bottom: 10,
                    right: i == 2
                        ? 0
                        : 5, // Если последний элемент, то отступ справа равен 0, иначе 5
                  ),
                  child: Container(
                    height: height * 0.27,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
        Row(
          children: [
            for (int i = 0; i < 2; i++)
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: width * 0.065,
                height: width * 0.04,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
              ),
          ],
        )
      ]),
    );
  }
}
