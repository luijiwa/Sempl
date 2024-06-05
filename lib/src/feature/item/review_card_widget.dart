import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/widget/star_rating_widget.dart';
import 'package:sempl/src/feature/item/bloc/item_bloc.dart';
import 'package:sempl/src/feature/item/full_screen_review_widget.dart';
import 'package:sempl/src/core/theme/theme.dart';
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

    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22),
        padding: const EdgeInsets.symmetric(horizontal: 15)
            .copyWith(top: 15, bottom: 30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: BlocBuilder<ItemBloc, ItemState>(
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) {
            final length =
                context.read<ItemBloc>().state.itemRating.data.length;
            switch (state.status) {
              case ScreenStatus.success:
                return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: width * 0.08),
                    itemBuilder: (context, index) {
                      return CommentItem(index: index);
                    },
                    itemCount: length);

              default:
                return shimmerReviewItemCard(height, width, 3);
            }
          },
        ),
      ),
    );
  }

  Shimmer shimmerReviewItemCard(double width, double height, int length) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) =>
                SizedBox(height: width * 0.08),
            itemBuilder: (context, index) {
              return ShimmerReviewItemCard(
                width: width,
                height: height,
              );
            },
            itemCount: length));
  }
}

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
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                child:
                    Material(shape: CircleBorder(), color: Colors.transparent),
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
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
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
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
            ),
        ],
      )
    ]);
  }
}

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
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
                        width: 1.0,
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Material(
                        shape: const CircleBorder(),
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                        )),
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
        ),
        SizedBox(height: width * 0.02545),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StarRatingWidget(size: width * 0.038175),
            Text(
              review.created,
              style:
                  const TextStyle(fontSize: 12, color: AppThemeColor.grisTwo),
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
        SizedBox(height: height * 0.02),
        Row(
          children: [
            if (images != null)
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  ...images.map(
                    (imageUrl) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FullScreenPageView(
                                images: images,
                                index: images.indexOf(imageUrl),
                              ),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 77,
                          height: 77,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7.0),
                            child: Image.asset(
                              imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  if (video != null)
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FullScreenPageView(
                              images: images,
                              index: images.length,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 77,
                        height: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              images[0],
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            const SizedBox(height: 30),
          ],
        ),
        if (video != null || images != null) SizedBox(height: width * 0.051),
        SizedBox(
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
                      SvgPicture.asset(
                        width: width * 0.043265,
                        colorFilter: const ColorFilter.mode(
                            AppThemeColor.gris, BlendMode.srcIn),
                        'assets/icons/like.svg',
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
                        child: SvgPicture.asset(
                          width: width * 0.043265,
                          colorFilter: const ColorFilter.mode(
                              AppThemeColor.blueColor, BlendMode.srcIn),
                          'assets/icons/like.svg',
                        ),
                      ),
                      const SizedBox(width: 5),
                      BlocBuilder<ItemBloc, ItemState>(
                        buildWhen: (previous, current) =>
                            previous.itemRating.data[index].dislikesCount !=
                            current.itemRating.data[index].dislikesCount,
                        builder: (context, state) {
                          return Text(
                            state.itemRating.data[index].dislikesCount
                                .toString(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
  // Transform.scale(
  //                         scale: -1,
  //                         child: SvgPicture.asset(
  //                           width: width * 0.043265,
  //                           colorFilter: const ColorFilter.mode(
  //                               AppThemeColor.gris, BlendMode.srcIn),
  //                           'assets/icons/like.svg',
  //                         ),
  //                       ),