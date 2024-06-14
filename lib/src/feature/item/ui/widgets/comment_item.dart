import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/star_rating_widget.dart';
import 'package:sempl/src/feature/item/bloc/item_bloc.dart';

import 'comment_user_avatar_and_name_row_widget.dart';
import 'like_dislike_row_widget.dart';
import 'media_in_comment_row_widget.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    final listReview = context.read<ItemBloc>().state.itemRating.data;
    final review = listReview[index];
    final ImageProvider image = review.image.isEmpty
        ? const AssetImage("assets/images/empty_avatar.png") as ImageProvider
        : NetworkImage(review.image) as ImageProvider;
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    const String? video = null;
    final List<String>? images =
        review.image.isNotEmpty ? [review.image] : null;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15).copyWith(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CommentUserAvatarAndNameRowWidget(
                  width: width, image: image, review: review),
              SizedBox(height: width * 0.02545),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StarRatingWidget(size: width * 0.038175),
                  Text(
                    review.created,
                    style: const TextStyle(
                        fontSize: 12, color: AppThemeColor.grisTwo),
                  ),
                ],
              ),
              SizedBox(height: height * 0.01),
              Row(
                children: [
                  AutoSizeText(
                    review.comment,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(height: height * 0.02),
              Column(
                children: [
                  for (int i = 0; i < review.prosList.length; i++)
                    Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 12,
                          color: AppThemeColor.blueColor,
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          review.prosList[i],
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              if (video != null || images != null)
                SizedBox(height: width * 0.051),
              if (images != null)
                MediaInCommentRowWidget(images: images, video: video),
              SizedBox(height: width * 0.05),
              LikeDislikeRowWidget(width: width, review: review, index: index)
            ],
          ),
        ),
      ),
    );
  }
}
