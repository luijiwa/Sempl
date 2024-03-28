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
      expandedHeight: height * 0.32,
      actions: [
        Container(
            height: height * 0.025,
            decoration: const BoxDecoration(
              color: AppThemeColor.yellow,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Text('50 баллов',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 12,
                        color: AppThemeColor.purple)),
              ),
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
        const SizedBox(width: 22),
      ],
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
            background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.04),
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
                    const AutoSizeText(
                      'ПОПРОБУЙТЕ НОВОЕ СРЕДСТВО ДЛЯ ЧИСТКИ ЗУБОВ БЕСПЛАТНО',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 27,
                        color: Colors.white,
                        height: 0.9,
                      ),
                      maxLines: 3,
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      children: [
                        const Spacer(),
                        SizedBox(
                          height: 0.05 * height,
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
