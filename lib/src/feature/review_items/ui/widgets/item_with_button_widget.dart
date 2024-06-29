import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';

class ItemWithButtonWidget extends StatelessWidget {
  const ItemWithButtonWidget({
    super.key,
    this.withDate = true,
    this.imageUrl = 'assets/images/dng_parfume.jpeg',
    this.padding,
    this.title = 'ОЧИСТИТЕЛЬ ЗУБОВ',
    this.subtitle = 'Доставлено 15 января 2023г.',
    this.isReviewExist = false,
  });
  final bool withDate;
  final String imageUrl;
  final EdgeInsetsGeometry? padding;
  final String title;
  final String subtitle;
  final bool isReviewExist;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return SliverToBoxAdapter(
      child: Container(
        padding: padding ??
            EdgeInsets.only(top: height * 0.0118, bottom: height * 0.0294),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            border: Border.all(color: AppThemeColor.gris.withOpacity(0.1)),
            boxShadow: [
              BoxShadow(
                color: AppThemeColor.black.withOpacity(0.02),
                blurRadius: 10,
                spreadRadius: 10,
              ),
            ]),
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
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 7)
                      .copyWith(bottom: 13),
              child: AutoSizeText(
                subtitle,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: Theme.of(context).textTheme.itemDateDelivery.copyWith(
                      color: AppThemeColor.black,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.021),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    context.goNamed(AppRoutes.feedback.name);
                  },
                  child: AutoSizeText(
                    isReviewExist ? 'ПРОСМОТРЕТЬ ОТЗЫВ' : 'НАПИСАТЬ ОТЗЫВ',
                    style: TextStyle(
                      fontSize: width > 320 ? 15 : 12,
                      color: AppThemeColor.grey,
                    ),
                  ),
                ),
              ),
            ),
            if (withDate && !isReviewExist)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: AutoSizeText(
                  'осталось 10 дней'.toUpperCase(),
                  style: Theme.of(context).textTheme.itemRemainingDayNotifier,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
