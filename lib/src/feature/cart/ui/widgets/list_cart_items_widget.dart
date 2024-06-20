import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/feature/cart/bloc/cart_bloc.dart';
import 'package:sempl/src/feature/cart/ui/widgets/product_card.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';

class ListCartItemsWidget extends StatelessWidget {
  const ListCartItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: NextStepButton(
            title: 'СДЕЛАТЬ ЗАКАЗ',
            onPressed: () {},
          ),
        ),
        body: CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            const SliverAppBar(
              title: Text('Корзина'),
              leading: CustomBackButton(),
            ),
            DecoratedSliver(
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
                            const _CustomDivider(),
                        itemBuilder: (context, index) => ProductCard(
                          item: state.items[index],
                        ),
                      ),
                    ),
                  ),
                  const SliverFillRemaining(
                    fillOverscroll: true,
                    hasScrollBody: false,
                    child: SizedBox(),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}

///Я не знаю почему обычный Divider не отображается
class _CustomDivider extends StatelessWidget {
  const _CustomDivider();

  @override
  Widget build(BuildContext context) => SizedBox(
        child: ColoredBox(
          color: Colors.black.withOpacity(0.1),
          child: const SizedBox(
            height: 0.5,
            width: double.maxFinite,
          ),
        ),
      );
}
