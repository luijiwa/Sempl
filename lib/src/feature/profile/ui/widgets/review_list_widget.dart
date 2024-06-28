import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';

class ReviewListWidget extends StatelessWidget {
  const ReviewListWidget({
    super.key,
    this.isWaitingReview = false,
  });
  final bool isWaitingReview;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return SliverList.separated(
      itemCount: 1,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => context.goNamed(AppRoutes.reviewItemsScreen.name),
        child: Material(
          elevation: 10,
          shadowColor: AppThemeColor.black.withOpacity(0.16),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 0.02545 * width,
              bottom: 0.06108 * width,
              left: 0.0509 * width,
              right: 0.0509 * width,
            ),
            child: Column(
              children: [
                Container(
                  height: 0.3563 * width,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/secret_item_image.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0.0329987288 * width),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03)
                      .copyWith(bottom: width * 0.0084114407),
                  child: AutoSizeText(
                    'СЕКРЕТНЫЙ ПРОДУКТ ТОЛЬКО ДЛЯ ТЕБЯ',
                    style: Theme.of(context).textTheme.appBodySemiBold,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
                if (!isWaitingReview)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    child: AutoSizeText(
                      'Ожидаемое время доставки: 15.03.23 18:00',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .appBodyMedium
                          .copyWith(fontSize: 13),
                      maxLines: 1,
                      minFontSize: 10,
                    ),
                  ),
                if (isWaitingReview)
                  Padding(
                    padding: EdgeInsets.only(
                        top: width * 0.08, bottom: width * 0.04),
                    child: AutoSizeText(
                      'Ждут отзывов!',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .appBodyMedium
                          .copyWith(fontSize: 13, color: AppThemeColor.rose),
                      maxLines: 1,
                      minFontSize: 10,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 12),
    );
  }
}
