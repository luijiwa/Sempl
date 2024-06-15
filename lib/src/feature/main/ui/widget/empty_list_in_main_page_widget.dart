import 'package:flutter/material.dart';
import 'package:sempl/src/core/widget/shimmer.dart';

class EmptyListInMainPageWidget extends StatelessWidget {
  const EmptyListInMainPageWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) => SliverList(
          delegate: SliverChildBuilderDelegate(
        childCount: 2,
        (BuildContext context, int index) => Center(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: width * 0.05),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Shimmer(
                        size: Size(width * 0.374115, width * 0.37),
                      ),
                      SizedBox(height: width * 0.004115),
                      const Shimmer(
                        size: Size(90, 21),
                      ),
                      SizedBox(height: width * 0.004115),
                      const Shimmer(
                        size: Size(90, 21),
                      ),
                      SizedBox(height: width * 0.004115),
                      const Shimmer(
                        size: Size(164, 39),
                      ),
                      SizedBox(height: width * 0.004115),
                      const Shimmer(
                        size: Size(90, 12),
                      ),
                      SizedBox(height: width * 0.004115),
                      const Shimmer(
                        size: Size(85, 14),
                      ),
                    ],
                  ),
                ))),
      ));
}
