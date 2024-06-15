import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/feature/item/bloc/item_bloc.dart';
import 'package:sempl/src/feature/item/ui/widgets/comment_item.dart';
import 'package:sempl/src/feature/item/ui/widgets/shimmer_review_item_card.dart';
import 'package:shimmer/shimmer.dart';

class ReviewCardWidget extends StatelessWidget {
  const ReviewCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final List<String> images = [
      "assets/images/review_photo1.png",
      "assets/images/review_photo2.png",
    ];
    const String video =
        "https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4";

    return BlocBuilder<ItemBloc, ItemState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        final length = context.read<ItemBloc>().state.itemRating.data.length;
        switch (state.status) {
          case ScreenStatus.success:
            return SliverList.separated(
              itemCount: length,
              itemBuilder: (context, index) => CommentItem(index: index),
              separatorBuilder: (context, index) =>
                  SizedBox(height: width * 0.02),
            );

          default:
            return SliverToBoxAdapter(
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: width * 0.08),
                    itemBuilder: (context, index) => ShimmerReviewItemCard(
                        width: width,
                        height: height,
                      ),
                    itemCount: 3,),
              ),
            );
        }
      },
    );
  }
}
