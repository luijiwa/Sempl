import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/custom_sliver_app_bar.dart';
import 'package:my_app/src/core/components/dropdown_custom_widget.dart';
import 'package:my_app/src/core/components/item_in_list_widget.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/theme.dart';

class RecentProductsScreen extends StatelessWidget {
  const RecentProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    logger.i(height * 0.2);
    return Scaffold(
      backgroundColor: AppThemeColor.grey,
      body: CustomScrollView(
        slivers: <Widget>[
          const CustomSliverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(top: height * 0.03),
            sliver: const SliverToBoxAdapter(
              child: AutoSizeText(
                "НЕДАВНО ОПРОБОВАННЫЕ ПРОДУКТЫ",
                style: TextStyle(
                  fontFamily: 'DrukCyr',
                  fontSize: 50,
                  height: 0.95,
                ),
                maxLines: 2,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(top: height * 0.03, right: width * 0.1),
            sliver: const SliverToBoxAdapter(
              child: AutoSizeText(
                "В этом разделе вы можете ознакомиться с уже рассмотренными товарами и оставленными на них отзывами",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'SourceSansPro',
                  fontSize: 15,
                  height: 1.2,
                ),
                maxLines: 4,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(top: height * 0.05),
            sliver: SliverToBoxAdapter(
              child: DropdownButtonFormField<String>(
                isExpanded: false,
                iconSize: 24,
                icon:
                    const Icon(Icons.expand_more_rounded, color: Colors.black),
                items: ['Крем', 'Сыворотка', 'Масло', 'Спреи', 'Кондиционер']
                    .map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(item,
                            style:
                                const TextStyle(fontFamily: 'SourceSansPro'))))
                    .toList(),
                hint: const Text('Категории',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SourceSansPro',
                    )),
                decoration: dropdownDecoration.copyWith(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.014, horizontal: height * 0.023),
                ),
                value: null,
                onChanged: (_) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Выберите из списка';
                  }
                  return null;
                },
                onTap: () {},
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 22),
            sliver: SliverFixedExtentList(
              itemExtent: height * 0.372, // Высота каждого элемента в списке
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  logger.w(index);
                  return const ItemInListWidget(
                    applyColorFilter: true,
                  );
                },
                childCount: 10, // Количество элементов в списке
              ),
            ),
          ),
          const SliverToBoxAdapter(child: BottomPadding())
        ],
      ),
    );
  }
}
