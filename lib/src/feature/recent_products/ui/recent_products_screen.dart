import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/categories_button_widget.dart';
import 'package:sempl/src/core/widget/custom_sliver_app_bar.dart';
import 'package:sempl/src/core/widget/item_in_list_widget.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/main/bloc/main_screen_bloc.dart';
import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart';
import 'package:sempl/src/feature/recent_products/bloc/recent_products_bloc.dart';

/// {@template recent_products_screen.class}
/// RecentProductsScreen.
/// {@endtemplate}

class RecentProductsScreen extends StatefulWidget {
  const RecentProductsScreen({super.key});

  @override
  State<RecentProductsScreen> createState() => _RecentProductsScreenState();
}

class _RecentProductsScreenState extends State<RecentProductsScreen> {
  late final RecentProductsBloc _recentProductsBloc;

  @override
  void initState() {
    super.initState();
    _recentProductsBloc = RecentProductsBloc(
      DependenciesScope.of(context).recentProductsRepository,
      DependenciesScope.of(context).mainScreenRepository,
    );
    _recentProductsBloc.add(const RecentProductsEvent.started());
  }

  @override
  void dispose() {
    super.dispose();
    _recentProductsBloc.close();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: BlocProvider(
          create: (context) => _recentProductsBloc,
          child: Scaffold(
            backgroundColor: AppThemeColor.grey,
            body: LayoutBuilder(
              builder: (context, constraint) => CustomScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: <Widget>[
                  const CustomSliverAppBar(),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 22)
                        .copyWith(top: constraint.maxHeight * 0.02),
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
                        .copyWith(
                            top: constraint.maxHeight * 0.025,
                            right: constraint.maxWidth * 0.1),
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
                  BlocBuilder<RecentProductsBloc, RecentProductsState>(
                    buildWhen: (previous, current) =>
                        previous.status != current.status,
                    builder: (context, state) {
                      switch (state.status) {
                        case ScreenStatus.success:
                          return RecentProductsSuccessViewWidget(
                            constraint: constraint,
                          );

                        case ScreenStatus.loading:
                        case ScreenStatus.initial:
                          return const SliverFillRemaining(
                            hasScrollBody: false,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );

                        default:
                          return const SliverFillRemaining(
                              hasScrollBody: false,
                              child: Center(
                                child: Text('Что-то пошло не так'),
                              ));
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class RecentProductsSuccessViewWidget extends StatelessWidget {
  const RecentProductsSuccessViewWidget({
    super.key,
    required this.constraint,
  });
  final BoxConstraints constraint;
  @override
  Widget build(BuildContext context) => SliverMainAxisGroup(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(top: constraint.maxHeight * 0.05),
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
            padding: EdgeInsets.only(top: constraint.maxHeight * 0.04),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, int index) => ItemInListWidget(
                  item:
                      context.read<RecentProductsBloc>().state.newSempls[index],
                  applyColorFilter: true,
                ),
                childCount: context
                    .read<RecentProductsBloc>()
                    .state
                    .newSempls
                    .length, // Количество элементов в списке
              ),
            ),
          ),
          const SliverToBoxAdapter(child: BottomPadding()),
        ],
      );
}
