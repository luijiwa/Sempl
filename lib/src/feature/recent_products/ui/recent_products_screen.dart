import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/blue_item_with_cross.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/categories_button_widget.dart';
import 'package:my_app/src/core/components/custom_sliver_app_bar.dart';
import 'package:my_app/src/core/components/item_in_list_widget.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/core/theme/theme.dart';

class RecentProductsScreen extends StatelessWidget {
  const RecentProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    logger.i(height * 0.2);
    return Scaffold(
      backgroundColor: AppThemeColor.grey,
      body: CustomScrollView(
        slivers: <Widget>[
          const CustomSliverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(top: height * 0.02),
            sliver: SliverToBoxAdapter(
              child: AutoSizeText(
                "НЕДАВНО ОПРОБОВАЛИ",
                style: Theme.of(context)
                    .textTheme
                    .appTitleMedium
                    .copyWith(fontSize: 28),
                maxLines: 2,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(top: height * 0.025, right: width * 0.1),
            sliver: const SliverToBoxAdapter(
              child: AutoSizeText(
                "В этом разделе вы можете ознакомиться с уже рассмотренными товарами и оставленными на них отзывами",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SourceSansPro',
                  fontSize: 15,
                  height: 1.2,
                ),
                maxLines: 4,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(top: height * 0.05),
            sliver: const CategoriesButtonWidget(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22).copyWith(
              top: 10,
            ),
            sliver: const SliverToBoxAdapter(
              child: Wrap(
                spacing: 3.0,
                runSpacing: 3.0,
                children: [
                  BlueItemWithCross(text: 'Категории: шампуни'),
                  BlueItemWithCross(text: 'Шапмпуни для волос'),
                  BlueItemWithCross(text: 'Item 3'),
                  BlueItemWithCross(text: 'Item 4'),
                  BlueItemWithCross(text: 'Item 5'),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: height * 0.04),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const ItemInListWidget(
                    applyColorFilter: true,
                  );
                },
                childCount: 10, // Количество элементов в списке
              ),
            ),
          ),
          const SliverToBoxAdapter(child: BottomPadding())
        ],
      ),
    );
  }
}
