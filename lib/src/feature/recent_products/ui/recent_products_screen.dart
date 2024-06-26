import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/categories_button_widget.dart';
import 'package:sempl/src/core/widget/custom_sliver_app_bar.dart';
import 'package:sempl/src/core/widget/item_in_list_widget.dart';
import 'package:sempl/src/feature/main/bloc/main_screen_bloc.dart';

class RecentProductsScreen extends StatelessWidget {
  const RecentProductsScreen({required this.bloc, super.key});
  final MainScreenBloc bloc;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

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
                "КАТАЛОГ И НЕДАВНО ОПРОБОВАННЫЕ СЕМПЛЫ",
                style: Theme.of(context)
                    .textTheme
                    .appTitleMedium
                    .copyWith(fontSize: 28),
                maxLines: 3,
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
                  color: AppThemeColor.black,
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
                // child: Wrap(
                //   spacing: 3.0,
                //   runSpacing: 3.0,
                //   children: [
                // BlueItemWithCross(text: 'Категории: шампуни'),
                //     BlueItemWithCross(text: 'Шапмпуни для волос'),
                //     BlueItemWithCross(text: 'Item 3'),
                //     BlueItemWithCross(text: 'Item 4'),
                //     BlueItemWithCross(text: 'Item 5'),
                //   ],
                // ),
                ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: height * 0.04),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, int index) => ItemInListWidget(
                  item: bloc.state.newSempls[index],
                  applyColorFilter: true,
                ),
                childCount: bloc
                    .state.newSempls.length, // Количество элементов в списке
              ),
            ),
          ),
          const SliverToBoxAdapter(child: BottomPadding()),
        ],
      ),
    );
  }
}
