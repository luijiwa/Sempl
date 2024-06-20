import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/utils/extentions/build_context_ext.dart';
import 'package:sempl/src/core/widget/app_bar_profile_icon_button_widget.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/feature/cart/bloc/cart_bloc.dart';
import 'package:sempl/src/feature/cart/ui/widgets/product_card.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';

class ListCartItemsWidget extends StatelessWidget {
  const ListCartItemsWidget({
    required this.width,
    super.key,
  });
  final double width;
  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: NextStepButton(
            title: 'СДЕЛАТЬ ЗАКАЗ',
            onPressed: () => context.goNamed(AppRoutes.delivery.name),
          ),
        ),
        body: CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            SliverAppBar(
              title: const Text('Корзина'),
              titleTextStyle: context.text.appBarStyle2,
              leading: const CustomBackButton(),
              actions: const [
                AppBarProfileIconButtonWidget(),
                SizedBox(width: 23),
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 10),
              sliver: DecoratedSliver(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                sliver: SliverMainAxisGroup(
                  slivers: [
                    SliverPadding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 23.0).copyWith(
                        top: 50,
                        bottom: MediaQuery.paddingOf(context).bottom + 60,
                      ),
                      sliver: BlocBuilder<CartBloc, CartState>(
                        bloc: DependenciesScope.of(context).cartBloc,
                        buildWhen: (previous, current) =>
                            previous.items != current.items ||
                            previous.status != current.status,
                        builder: (context, state) => SliverList.separated(
                          itemCount: state.items.length,
                          separatorBuilder: (context, index) =>
                              _CustomDivider(width),
                          itemBuilder: (context, index) => ProductCard(
                            item: state.items[index],
                            width: width,
                          ),
                        ),
                      ),
                    ),
                    const SliverPadding(padding: EdgeInsets.only(top: 25)),
                    const SliverFillRemaining(
                      fillOverscroll: true,
                      hasScrollBody: false,
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}

///Я не знаю почему обычный Divider не отображается
class _CustomDivider extends StatelessWidget {
  const _CustomDivider(this.width);
  final double width;
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: width * 0.089075),
        child: SizedBox(
          child: ColoredBox(
            color: Colors.black.withOpacity(0.1),
            child: const SizedBox(
              height: 0.5,
              width: double.maxFinite,
            ),
          ),
        ),
      );
}
