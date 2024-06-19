import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/feature/cart/ui/widgets/item_in_empty_list_widget.dart';
import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart'; // Import the NewSemplsData class

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Корзина'),
          leading: const CustomBackButton(),
        ),
        body: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            children: [
              const Text('В корзине ничего нет...'),
              RichText(
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
              Expanded(
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text('ПОПУЛЯРНЫЕ СЕМПЛЫ'),
                          Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => const SizedBox(
                            width: 244,
                            child: ItemInEmptyListWidget(
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
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 23).copyWith(
                          bottom: MediaQuery.of(context).padding.bottom +
                              157, // Use MediaQuery.of(context).padding.bottom
                        ),
                        child: SizedBox(
                          width: double.maxFinite,
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
              ),
            ],
          ),
        ),
      );
}
