import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/item_in_list_widget.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/main/bloc/main_screen_bloc.dart';
import 'package:sempl/src/feature/main/main_screen_app_bar.dart';
import 'package:sempl/src/feature/recent_products/ui/recent_products_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final MainScreenBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = MainScreenBloc(DependenciesScope.of(context).mainScreenRepository);
    _bloc.add(const MainScreenEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => _bloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            const MainScreenAppBar(),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 22)
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
            BlocBuilder<MainScreenBloc, MainScreenState>(
              buildWhen: (previous, current) =>
                  previous.screenStatus != current.screenStatus,
              builder: (context, state) {
                switch (state.screenStatus) {
                  case ScreenStatus.success:
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) =>
                            ItemInListWidget(index: index),
                        childCount: state.newSemplsCount,
                      ),
                    );
                  default:
                    return const SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                }
              },
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
                    // context.goNamed(AppRoutes.recentProducts.name);
                    Navigator(
                      onGenerateRoute: (settings) {
                        return MaterialPageRoute(
                          builder: (context) =>
                              RecentProductsScreen(mainContext: context),
                        );
                      },
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
      ),
    );
  }
}
