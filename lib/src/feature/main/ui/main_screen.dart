import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/item_in_list_widget.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/main/bloc/main_screen_bloc.dart';
import 'package:sempl/src/feature/main/ui/widget/main_screen_app_bar.dart';
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
        floatingActionButton: kDebugMode
            ? FloatingActionButton(
                onPressed: () {
                  context.goNamed(AppRoutes.loginConfirmation.name);
                },
              )
            : null,
        backgroundColor: Colors.white,
        body: _MainScreenView(width: width),
      ),
    );
  }
}

class _MainScreenView extends StatelessWidget {
  const _MainScreenView({
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<MainScreenBloc>(context);

    return CustomScrollView(
      slivers: <Widget>[
        const MainScreenAppBar(),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 22)
              .copyWith(right: width * 0.2),
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
        BlocBuilder<MainScreenBloc, MainScreenState>(
          buildWhen: (previous, current) =>
              previous.screenStatus != current.screenStatus,
          builder: (context, state) {
            switch (state.screenStatus) {
              case ScreenStatus.success:
                return SliverList.builder(
                  itemCount: state.newSemplsCount,
                  itemBuilder: (BuildContext context, int index) =>
                      ItemInListWidget(item: state.newSempls[index]),
                );
              // case ScreenStatus.loading:
              //   return EmptyListInMainPageWidget(width: width);
              case ScreenStatus.failure:
                return const SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: Text('Что-то пошло не так'),
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
                final myBloc = BlocProvider.of<MainScreenBloc>(context);

                // Переход на второй экран с передачей блока
                Navigator.of(context).push(
                  MaterialPageRoute<RecentProductsScreen>(
                    builder: (context) => BlocProvider.value(
                      value: myBloc,
                      child: RecentProductsScreen(bloc: bloc),
                    ),
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
    );
  }
}
