import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/app_bar_profile_icon_button_widget.dart';
import 'package:sempl/src/core/widget/cart_with_badge_icon_widget.dart';

class MainScreenAppBar extends StatelessWidget {
  const MainScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: height * 0.31,
      backgroundColor: const Color(0xFFB5A3F8),
      flexibleSpace: Stack(
        children: [
          Image.asset(
            'assets/images/main_header.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: MediaQuery.of(context).padding.top),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // const PointsWidget(),
                      const CartWithBadgeIconWidget(),
                      SizedBox(width: width * 0.02),
                      const AppBarProfileIconButtonWidget(),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                    width: 0.26 * width,
                    child: AutoSizeText(
                      'SEMPL!',
                      style: Theme.of(context)
                          .textTheme
                          .appTitleMedium
                          .copyWith(color: Colors.white),
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: height * 0.097,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Flexible(
                          child: AutoSizeText(
                            'ПОПРОБУЙТЕ НОВОЕ\nСРЕДСТВО ДЛЯ ЧИСТКИ\nЗУБОВ БЕСПЛАТНО',
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              height: 0.9,
                            ),
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.155,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04,
                            vertical: height * 0.01,
                          ),
                          elevation: 0,
                          foregroundColor: Colors.grey,
                          backgroundColor: AppThemeColor.yellow,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AutoSizeText(
                              'ЗАКАЗАТЬ СЕЙЧАС ',
                              style: TextStyle(
                                fontSize: width > 320 ? 14 : 12,
                                color: AppThemeColor.black,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/icons/arrow_right.svg',
                              colorFilter: const ColorFilter.mode(
                                AppThemeColor.black,
                                BlendMode.srcIn,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const SizedBox(height: 36),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -2,
            left: 0,
            right: 0,
            child: Container(
              height: 36,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
