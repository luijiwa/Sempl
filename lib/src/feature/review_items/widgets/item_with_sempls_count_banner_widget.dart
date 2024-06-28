import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';

class ItemWithSemplsCountBannerWidget extends StatelessWidget {
  const ItemWithSemplsCountBannerWidget({
    super.key,
    this.withDate = true,
    this.imageUrl = 'assets/images/dng_parfume.jpeg',
    this.padding,
    this.title = 'ОЧИСТИТЕЛЬ ЗУБОВ',
    this.howMuchCount = 'И ЕЩЁ 9 СЕМПЛОВ',
    this.subtitle = 'Доставлено 15 января 2023г.',
    this.alredyToReview = false,
  });
  final bool withDate;
  final String imageUrl;
  final EdgeInsetsGeometry? padding;
  final String title;
  final String howMuchCount;
  final String subtitle;
  final bool alredyToReview;
  @override
  Widget build(BuildContext context) {
    const BorderRadiusGeometry borderRadius =
        BorderRadius.all(Radius.circular(30.0));
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return SliverToBoxAdapter(
      child: SizedBox(
        width: double.maxFinite,
        child: Stack(
          children: [
            Container(
              padding: padding ??
                  EdgeInsets.only(
                      top: height * 0.0118, bottom: height * 0.0294),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: borderRadius,
                border: Border.all(color: AppThemeColor.gris.withOpacity(0.1)),
                boxShadow: [
                  BoxShadow(
                    color: AppThemeColor.black.withOpacity(0.02),
                    blurRadius: 10,
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: height * 0.01),
                  Image.asset(
                    imageUrl,
                    width: width * 0.34103,
                  ),
                  SizedBox(height: height * 0.016),
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .appBodySemiBold
                        .copyWith(color: AppThemeColor.black),
                  ),
                  Text(
                    howMuchCount.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .appBodySemiBold
                        .copyWith(color: AppThemeColor.blueColor),
                  ),
                  SizedBox(height: height * 0.00826),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                    child: AutoSizeText(
                      alredyToReview ? 'Ждут отзывов!' : subtitle,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style:
                          Theme.of(context).textTheme.itemDateDelivery.copyWith(
                                color: alredyToReview
                                    ? AppThemeColor.rose
                                    : AppThemeColor.black,
                              ),
                    ),
                  ),
                  if (withDate)
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: AutoSizeText(
                        'осталось 10 дней'.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .itemRemainingDayNotifier,
                      ),
                    ),
                ],
              ),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                borderRadius: borderRadius,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () =>
                      context.goNamed(AppRoutes.reviewItemsScreen.name),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
