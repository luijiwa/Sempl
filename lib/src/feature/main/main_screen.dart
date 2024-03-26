import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/item_in_list_widget.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/main/main_screen_app_bar.dart';
import 'package:my_app/src/feature/recent_products/recent_products_screen.dart';
import 'package:my_app/theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    logger.w(height * 0.346);
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          const MainScreenAppBar(),
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
          SliverFixedExtentList(
            itemExtent: height * 0.346, // Высота каждого элемента в списке
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const ItemInListWidget();
              },
              childCount: 4, // Количество элементов в списке
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            sliver: SliverToBoxAdapter(
              child: NextStepButton(
                title: 'СМОТРЕТЬ ВСЕ',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RecentProductsScreen(),
                    ),
                  );
                },
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
    );
  }
}
