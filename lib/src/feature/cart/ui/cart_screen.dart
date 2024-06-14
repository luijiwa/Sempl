import 'package:flutter/material.dart';
import 'package:sempl/src/core/constant/generated/assets.gen.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';

import 'widgets/product_card.dart';

/// {@template cart_screen.class}
/// CartScreen.
/// {@endtemplate}

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: NextStepButton(
              title: 'СДЕЛАТЬ ЗАКАЗ',
              onPressed: () {},
            ),
          ),
          body: LayoutBuilder(
            builder: (context, constraint) => CustomScrollView(
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
                          topRight: Radius.circular(50))),
                  sliver: SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 23.0)
                        .copyWith(
                            top: 50,
                            bottom: MediaQuery.paddingOf(context).bottom + 60),
                    sliver: SliverList.separated(
                      separatorBuilder: (context, index) => const Divider(
                        color: Colors.transparent,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) => ProductCard(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
