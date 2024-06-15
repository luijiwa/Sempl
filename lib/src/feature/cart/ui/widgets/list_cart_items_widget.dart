import 'package:flutter/material.dart';
import 'package:sempl/src/feature/cart/ui/widgets/product_card.dart';

class ListCartItemsWidget extends StatelessWidget {
  const ListCartItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => DecoratedSliver(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        sliver: SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0).copyWith(
            top: 50,
            bottom: MediaQuery.paddingOf(context).bottom + 60,
          ),
          sliver: SliverList.separated(
            separatorBuilder: (context, index) => const Divider(
              color: Colors.transparent,
            ),
            itemCount: 4,
            itemBuilder: (context, index) => ProductCard(),
          ),
        ),
      );
}
