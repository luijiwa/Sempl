import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/widget/blue_item_with_cross.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/categories_button_widget.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';

import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/finished_sempls/ui/widgets/item_in_list_with_review_widget.dart';

class FinishedSemplsScreen extends StatelessWidget {
  const FinishedSemplsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('SEMPL!'),
            leading: CustomBackButton(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(top: width * 0.063625),
            sliver: SliverMainAxisGroup(
              slivers: [
                SliverToBoxAdapter(
                  child: AutoSizeText(
                    'МОИ ЗАВЕРШЕННЫЕ ОБРАЗЦЫ',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.appTitleMedium,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                      top: width * 0.063625, bottom: width * 0.02036),
                  sliver: const CategoriesButtonWidget(),
                ),
                const SliverToBoxAdapter(
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
                SliverPadding(
                  padding: EdgeInsets.only(
                      top: width * 0.08653, bottom: width * 0.03563),
                  sliver: SliverToBoxAdapter(
                      child: Row(
                    children: [
                      const AutoSizeText(
                        '87 СЕМПЛОВ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      const Spacer(),
                      Wrap(
                        children: [
                          const AutoSizeText('новые'),
                          SvgPicture.asset(
                            colorFilter: const ColorFilter.mode(
                                AppThemeColor.blueColor, BlendMode.srcIn),
                            'assets/icons/step_into.svg',
                          ),
                        ],
                      ),
                      SizedBox(width: width * 0.02),
                      Wrap(
                        children: [
                          const AutoSizeText('оценка'),
                          SvgPicture.asset(
                            colorFilter: const ColorFilter.mode(
                                AppThemeColor.blueColor, BlendMode.srcIn),
                            'assets/icons/step_into_up.svg',
                          ),
                        ],
                      )
                    ],
                  )),
                ),
                SliverList.separated(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return const ItemInListWithReviewWidget();
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(height: width * 0.02)),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: BottomPadding(),
          )
        ],
      ),
    );
  }
}
