import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/star_rating_widget.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCartItem extends StatelessWidget {
  const ShimmerCartItem({required this.width, required this.height, super.key});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 22),
        padding: const EdgeInsets.symmetric(horizontal: 15)
            .copyWith(top: 25, bottom: 35),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          border: Border.all(
              width: 0.5, color: AppThemeColor.gris.withOpacity(0.5),),
        ),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StarRatingWidget(
                      size: width * 0.038175,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: width * 0.04,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: width * 0.045,
                  width: width * 0.14,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,),
                ),
                SizedBox(width: width * 0.02),
              ],
            ),
            SizedBox(height: height * 0.01),
            Container(
              height: height * 0.24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white,),
            ),
            SizedBox(height: height * 0.01),
            SizedBox(height: height * 0.01),
            Container(
              height: 0.1186228814 * width,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white,),
            ),
          ],),
        ),);
}
