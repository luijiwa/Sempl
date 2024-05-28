import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/widget/shimmer.dart';
import 'package:sempl/src/core/widget/star_rating_widget.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/item/bloc/item_bloc.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final state = context.watch<ItemBloc>().state;
    final item = state.item.data;
    final ratingCount = state.ratingCount;
    final sumRating = state.sumRating;
    return SliverToBoxAdapter(
      child: BlocBuilder<ItemBloc, ItemState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          switch (state.status) {
            case ScreenStatus.success:
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding: const EdgeInsets.symmetric(horizontal: 15)
                    .copyWith(top: 25, bottom: 35),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  border: Border.all(
                      width: 0.5, color: AppThemeColor.gris.withOpacity(0.5)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StarRatingWidget(size: width * 0.038175),
                            SizedBox(height: width * 0.017),
                            AutoSizeText(
                              '$sumRating по $ratingCount отзывам'
                                  .toUpperCase(),
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.favorite_outline_rounded,
                          color: AppThemeColor.blueColor,
                        ),
                        SizedBox(width: width * 0.03),
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/icons/share_icon.svg',
                            colorFilter: const ColorFilter.mode(
                                AppThemeColor.blueColor, BlendMode.srcIn),
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                      ],
                    ),
                    SizedBox(height: height * 0.01),
                    Image.asset(
                      "assets/images/item_image_in_detail.png",
                      height: height * 0.22,
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      item.upperCaseName,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.12),
                      child: AutoSizeText(item.description,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: const TextStyle(
                            fontSize: 14,
                            height: 1.2,
                          )),
                    ),
                    SizedBox(height: height * 0.016),
                    SizedBox(
                      height: 0.1186228814 * width,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          context.goNamed(AppRoutes.delivery.name);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xFF99BFD4),
                        ),
                        child: AutoSizeText(
                          'КУПИТЬ ЗА БАЛЛЫ',
                          style: TextStyle(
                            fontSize: width > 320 ? 15 : 12,
                            color: AppThemeColor.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );

            default:
              return Shimmer(
                cornerRadius: 30,
                size: Size(width * 0.9, width * 0.9),
              );
          }
        },
      ),
    );
  }
}
