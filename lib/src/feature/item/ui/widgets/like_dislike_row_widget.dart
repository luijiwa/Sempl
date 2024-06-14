import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/item/bloc/item_bloc.dart';
import 'package:sempl/src/feature/item/data/model/rating/rating.dart';

class LikeDislikeRowWidget extends StatelessWidget {
  const LikeDislikeRowWidget({
    super.key,
    required this.width,
    required this.review,
    required this.index,
  });

  final double width;
  final ReviewData review;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: width * 0.02545,
        children: [
          InkWell(
            onTap: () => context
                .read<ItemBloc>()
                .add(ItemEvent.addLikeToComment(review.id)),
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.038175, vertical: width * 0.02545),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppThemeColor.grey,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BlocBuilder<ItemBloc, ItemState>(
                    buildWhen: (previous, current) =>
                        previous.itemRating.data[index].userHasLiked !=
                        current.itemRating.data[index].userHasLiked,
                    builder: (context, state) {
                      final isLike = state.itemRating.data[index].userHasLiked;
                      return SvgPicture.asset(
                        width: width * 0.043265,
                        colorFilter: ColorFilter.mode(
                            isLike
                                ? AppThemeColor.blueColor
                                : AppThemeColor.gris,
                            BlendMode.srcIn),
                        'assets/icons/like.svg',
                      );
                    },
                  ),
                  const SizedBox(width: 5),
                  BlocBuilder<ItemBloc, ItemState>(
                    buildWhen: (previous, current) =>
                        previous.itemRating.data[index].likesCount !=
                        current.itemRating.data[index].likesCount,
                    builder: (context, state) {
                      return Text(
                        state.itemRating.data[index].likesCount.toString(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => context
                .read<ItemBloc>()
                .add(ItemEvent.addDislikeToComment(review.id)),
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.038175, vertical: width * 0.02545),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppThemeColor.grey,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.flip(
                    flipY: true,
                    child: BlocBuilder<ItemBloc, ItemState>(
                      buildWhen: (previous, current) =>
                          previous.itemRating.data[index].userHasDisliked !=
                          current.itemRating.data[index].userHasDisliked,
                      builder: (context, state) {
                        final isDislike =
                            state.itemRating.data[index].userHasDisliked;
                        return SvgPicture.asset(
                          width: width * 0.043265,
                          colorFilter: ColorFilter.mode(
                              isDislike
                                  ? AppThemeColor.blueColor
                                  : AppThemeColor.gris,
                              BlendMode.srcIn),
                          'assets/icons/like.svg',
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 5),
                  BlocBuilder<ItemBloc, ItemState>(
                    buildWhen: (previous, current) =>
                        previous.itemRating.data[index].dislikesCount !=
                        current.itemRating.data[index].dislikesCount,
                    builder: (context, state) {
                      return Text(
                        state.itemRating.data[index].dislikesCount.toString(),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
