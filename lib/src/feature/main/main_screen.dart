import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/components/out_button.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/main/main_screen_header_widget.dart';
import 'package:my_app/theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    logger.w(height * 0.346);
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: height * 0.5,
              actions: [
                Container(
                    height: height * 0.03,
                    decoration: const BoxDecoration(
                      color: AppThemeColor.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
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
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    alignment: Alignment.bottomLeft,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'SEMPL!',
                          style: TextStyle(
                            fontFamily: 'DrukCyr',
                            fontSize: 48,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                        ),
                        AutoSizeText(
                          'ПОПРОБУЙТЕ НОВОЕ СРЕДСТВО ДЛЯ ЧИСТКИ ЗУБОВ БЕСПЛАТНО',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 27,
                            color: Colors.white,
                          ),
                          maxLines: 3,
                        ),
                      ],
                    )),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0),
                child: AutoSizeText(
                  "НЕДАВНО ОПРОБОВАННЫЕ ПРОДУКТЫ",
                  style: TextStyle(
                    fontFamily: 'DrukCyr',
                    fontSize: 50,
                  ),
                  maxLines: 2,
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: height * 0.346, // Высота каждого элемента в списке
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/item_image.png"),
                        const Text("Vinopure"),
                        const AutoSizeText(
                            "Sérum salicylique Anti-imperfections 30ml - Caudalie"),
                        const Text("5.0 из 89 отзывов"),
                      ],
                    ),
                  );
                },
                childCount: 4, // Количество элементов в списке
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              sliver: SliverToBoxAdapter(
                child: NextStepButton(
                  title: 'СМОТРЕТЬ ВСЕ',
                  onPressed: () {},
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: BottomPadding(),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                color: Colors.white, // Белый фон для оставшегося места
              ),
            ),
          ],
        ),
      ),
    );
  }
}
