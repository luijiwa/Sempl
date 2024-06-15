import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/feature/review_items/widgets/item_with_button_widget.dart';
import 'package:sempl/src/feature/review_items/widgets/item_with_date_widget.dart';

class ReviewItemsScreen extends StatelessWidget {
  const ReviewItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar(
          leading: CustomBackButton(),
          title: Text('SEMPL!'),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverMainAxisGroup(slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                  top: height * 0.03068,
                  bottom: width * 0.04,
                  right: width * 0.05,),
              sliver: SliverToBoxAdapter(
                  child: AutoSizeText(
                'СЕКРЕТНЫЙ ЛОТ СПEЦИАЛЬНО ДЛЯ ВАС!',
                style: Theme.of(context).textTheme.appProfileTitle,
                maxLines: 2,
              ),),
            ),
            SliverPadding(padding: EdgeInsets.only(top: height * 0.0177)),
            const ItemWithDateWidget(),
            const SliverPadding(padding: EdgeInsets.only(top: 4)),
            const ItemWithButtonWidget(),
            const SliverToBoxAdapter(
              child: BottomPadding(),
            ),
          ],),
        ),
      ],
    ),);
  }
}
