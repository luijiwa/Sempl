import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/src/core/components/dropdown_custom_widget.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/theme.dart';

class RecentProductsScreen extends StatelessWidget {
  const RecentProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
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
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            sliver: SliverToBoxAdapter(
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
          SliverPadding(
            padding:
                const EdgeInsets.symmetric(horizontal: 22).copyWith(top: 22),
            sliver: const SliverToBoxAdapter(
              child: AutoSizeText(
                "В этом разделе вы можете ознакомиться с уже рассмотренными товарами и оставленными на них отзывами",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SourceSansPro',
                    fontSize: 15),
                maxLines: 4,
              ),
            ),
          ),
          SliverPadding(
            padding:
                const EdgeInsets.symmetric(horizontal: 22).copyWith(top: 22),
            sliver: const SliverToBoxAdapter(
              child: DropdownCustomWidget(
                listItems: [
                  'Крем',
                  'Сыворотка',
                  'Масло',
                  'Спреи',
                  'Кондиционер',
                ],
                hint: 'Категории',
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 22),
            sliver: SliverFixedExtentList(
              itemExtent: height * 0.346, // Высота каждого элемента в списке
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  logger.w(index);
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RecentProductsScreen(),
                        ),
                      );
                    },
                    child: Center(
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
                    ),
                  );
                },
                childCount: 10, // Количество элементов в списке
              ),
            ),
          ),
        ],
      ),
    );
  }
}
