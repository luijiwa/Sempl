import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/item/data/model/rating/rating.dart';

class CommentUserAvatarAndNameRowWidget extends StatelessWidget {
  const CommentUserAvatarAndNameRowWidget({
    required this.width, required this.image, required this.review, super.key,
  });

  final double width;
  final ImageProvider<Object> image;
  final ReviewData review;

  @override
  Widget build(BuildContext context) => Row(
      children: [
        SizedBox(
          width: width * 0.1,
          height: width * 0.1,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppThemeColor.blueColor,
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: AppThemeColor.blueColor,
                  ),
                ),
              ),
              ClipOval(
                child: Material(
                    shape: const CircleBorder(),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                    ),),
              ),
            ],
          ),
        ),
        SizedBox(width: width * 0.02),
        AutoSizeText(
          review.userNameUpper,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: AppThemeColor.blueColor,
          ),
          maxLines: 1,
        ),
      ],
    );
}
