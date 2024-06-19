import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/item_in_list_widget.dart';
import 'package:sempl/src/core/widget/star_rating_widget.dart';
import 'package:sempl/src/feature/cart/ui/widgets/item_in_empty_list_widget.dart';
import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => SliverMainAxisGroup(
        slivers: [
          const SliverToBoxAdapter(
            child: Text('В корзине ничего нет...'),
          ),
          SliverToBoxAdapter(
            child: RichText(
              text: const TextSpan(
                text: 'Ознакомьтесь с нашими  ',
                style: TextStyle(
                  color: AppThemeColor.black,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: 'семплами',
                    style: TextStyle(
                      color: AppThemeColor.blueColor,
                    ),
                  ),
                  TextSpan(
                    text: ' или воспользуйтесь поиском',
                  ),
                ],
              ),
            ),
          ),
          DecoratedSliver(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
              ),
            ),
            sliver: SliverMainAxisGroup(
              slivers: [
                const SliverToBoxAdapter(
                  child: Text('ПОПУЛЯРНЫЕ СЕМПЛЫ'),
                ),
                const SliverToBoxAdapter(
                  child: Text(
                    'Ознакомьтесь с нашими семплами или воспользуйтесь поиском',
                  ),
                ),
                SliverFillRemaining(
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) =>
                          const ItemInEmptyListWidget(
                        item: NewSemplsData(
                          id: 1,
                          name: 'Семпл',
                          description:
                              'Sérum salicylique Anti-imperfections 30ml - Caudalie',
                          photo:
                              'https://via.placeholder.com/640x480.png/005599?text=optio',
                          rating: 5.0,
                          countRating: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 23).copyWith(
                    bottom: MediaQuery.paddingOf(context).bottom + 157,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: AppThemeColor.grey,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'ПЕРЕЙТИ К ВЫБОРУ СЕМЛПОВ',
                        style: TextStyle(color: AppThemeColor.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
