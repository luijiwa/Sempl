import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/item_in_list_widget.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/router/app_routes.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/feature/main/main_screen_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          const MainScreenAppBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 22)
                .copyWith(right: width * 0.2),
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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const ItemInListWidget();
              },
              childCount: 4, // Количество элементов в списке
            ),
          ),
          const SliverToBoxAdapter(
            child: BottomPadding(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            sliver: SliverToBoxAdapter(
              child: NextStepButton(
                title: 'СМОТРЕТЬ ВСЕ',
                onPressed: () {
                  context.goNamed(AppRoutes.recentProducts.name);
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
