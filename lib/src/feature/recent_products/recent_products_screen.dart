import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/custom_sliver_app_bar.dart';
import 'package:my_app/src/core/components/dropdown_custom_widget.dart';
import 'package:my_app/src/core/components/item_in_list_widget.dart';
import 'package:my_app/src/core/components/out_button.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/recent_products/categories_list_screen.dart';
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
                child: SizedBox(
              height: 0.055 * height,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoriesListScreen(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    width: 1,
                    color: AppThemeColor.blueColor,
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/subject_icon.svg',
                      colorFilter: const ColorFilter.mode(
                          AppThemeColor.blueColor, BlendMode.srcIn),
                    ),
                    const SizedBox(width: 5),
                    AutoSizeText(
                      'Категории',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: width > 320 ? 15 : 12,
                        color: AppThemeColor.black,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      weight: 500,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            )),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22).copyWith(
              top: 10,
            ),
            sliver: const SliverToBoxAdapter(
              child: Wrap(
                spacing: 3.0,
                runSpacing: 3.0,
                children: [
                  BlueItemWithCross(text: 'Категории: шампуни'),
                  BlueItemWithCross(text: 'Шапмпуни для волос'),
                  BlueItemWithCross(text: 'Item 3'),
                  BlueItemWithCross(text: 'Item 4'),
                  BlueItemWithCross(text: 'Item 5'),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: height * 0.04),
            sliver: SliverFixedExtentList(
              itemExtent: height * 0.3999, // Высота каждого элемента в списке
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

class BlueItemWithCross extends StatelessWidget {
  final String text;

  const BlueItemWithCross({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: AppThemeColor.blueColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.2),
              ),
              padding: const EdgeInsets.all(4.0),
              child: const Icon(
                Icons.close,
                color: AppThemeColor.blueColor,
                size: 14.0,
              ),
            ),
            const SizedBox(width: 4.0),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontFamily: 'SourceSansPro'),
            ),
          ],
        ),
      ),
    );
  }
}
