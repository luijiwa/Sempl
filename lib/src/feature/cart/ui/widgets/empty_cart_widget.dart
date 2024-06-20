import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/extentions/build_context_ext.dart';
import 'package:sempl/src/core/widget/app_bar_profile_icon_button_widget.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/feature/cart/ui/widgets/item_in_empty_list_widget.dart';
import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart'; // Import the NewSemplsData class

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({
    required this.width,
    super.key,
  });
  final double width;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Корзина'),
          titleTextStyle: context.text.appBarStyle2,
          leading: const CustomBackButton(),
          actions: const [
            AppBarProfileIconButtonWidget(),
            SizedBox(width: 23),
          ],
        ),
        body: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: width * 0.05,
                  right: width * 0.44,
                  left: 23,
                  bottom: 5,
                ),
                child: AutoSizeText(
                  'В КОРЗИНЕ НИЧЕГО НЕТ...',
                  style: Theme.of(context).textTheme.appTitleMedium.copyWith(),
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  right: width * 0.1,
                  bottom: width * 0.13234,
                ),
                child: const AutoSizeText.rich(
                  TextSpan(
                    text: 'Ознакомьтесь с нашими  ',
                    style: TextStyle(
                      color: AppThemeColor.black,
                      fontSize: 15,
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
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              top: 28,
                              bottom: 20,
                            ),
                            child: AutoSizeText(
                              'ПОПУЛЯРНЫЕ СЕМПЛЫ',
                              style: Theme.of(context)
                                  .textTheme
                                  .appTitleMedium
                                  .copyWith(fontSize: 18),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => const SizedBox(
                            width: 230,
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
                            onPressed: () {
                              context.goNamed(AppRoutes.main.name);
                            },
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
