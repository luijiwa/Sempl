import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/theme.dart';

class MainScreenAppBar extends StatelessWidget {
  const MainScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SliverAppBar(
      expandedHeight: height * 0.5,
      actions: [
        Container(
            height: height * 0.03,
            decoration: const BoxDecoration(
              color: AppThemeColor.yellow,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text('50 баллов',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 12,
                      color: AppThemeColor.purple)),
            )),
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
      backgroundColor: const Color(0xFFB5A3F8),
      flexibleSpace: Stack(
        children: [
          FlexibleSpaceBar(
            background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AutoSizeText(
                      'SEMPL!',
                      style: TextStyle(
                        fontFamily: 'DrukCyr',
                        fontSize: 48,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                    ),
                    const AutoSizeText(
                      'ПОПРОБУЙТЕ НОВОЕ СРЕДСТВО ДЛЯ ЧИСТКИ ЗУБОВ БЕСПЛАТНО',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 27,
                        color: Colors.white,
                      ),
                      maxLines: 3,
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        SizedBox(
                          height: 0.055 * height,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.grey,
                                backgroundColor: AppThemeColor.yellow),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  'заказать сейчас '.toUpperCase(),
                                  style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    fontSize: width > 320 ? 15 : 12,
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
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Positioned(
            bottom: -1,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
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
