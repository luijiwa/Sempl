import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/components/points_widget.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/theme.dart';

class MainScreenAppBar extends StatelessWidget {
  const MainScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    logger.w('${height * 0.32} ${MediaQuery.of(context).padding.top}');
    return SliverAppBar(
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).padding.top),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const PointsWidget(),
                      SizedBox(width: width * 0.02),
                      Container(
                        width: width * 0.1,
                        height: width * 0.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff7c94b6),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/profile.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: AppThemeColor.blueColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const AutoSizeText(
                    'SEMPL!',
                    style: TextStyle(
                      fontFamily: 'DrukCyr',
                      fontSize: 32,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(height: height * 0.008),
                  SizedBox(
                    width: width,
                    child: Row(
                      children: [
                        const Flexible(
                          child: AutoSizeText(
                            'ПОПРОБУЙТЕ НОВОЕ\nСРЕДСТВО ДЛЯ ЧИСТКИ\nЗУБОВ БЕСПЛАТНО',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 27,
                              color: Colors.white,
                              height: 0.9,
                            ),
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(width: width * 0.155),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 38),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.04,
                                  vertical: height * 0.01),
                              elevation: 0,
                              foregroundColor: Colors.grey,
                              backgroundColor: AppThemeColor.yellow),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AutoSizeText(
                                'заказать сейчас '.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: width > 320 ? 14 : 12,
                                  color: Colors.black,
                                ),
                              ),
                              SvgPicture.asset(
                                colorFilter: const ColorFilter.mode(
                                    Colors.black, BlendMode.srcIn),
                                'assets/images/arrow_right.svg',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
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
