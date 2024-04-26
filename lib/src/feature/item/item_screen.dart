import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/custom_back_button.dart';
import 'package:my_app/src/feature/item/item_cart_widget.dart';
import 'package:my_app/src/feature/item/review_card_widget.dart';
import 'package:my_app/src/core/theme/theme.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: const CustomBackButton(),
          backgroundColor: AppThemeColor.grey,
          title: Text(
            'Страница продукта',
            style: TextStyle(
              fontSize: width > 320 ? 18 : 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        SliverPadding(padding: EdgeInsets.only(top: height * 0.02)),
        const ItemCard(),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 22)
              .copyWith(top: 27, bottom: 15),
          sliver: const CommentsRowWidget(),
        ),
        const ReviewCardWidget(),
        const SliverToBoxAdapter(
          child: BottomPadding(),
        )
      ],
    ));
  }
}

class CommentsRowWidget extends StatelessWidget {
  const CommentsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SliverToBoxAdapter(
        child: Row(
      children: [
        const AutoSizeText(
          'КОММЕНТАРИИ (387)',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
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
            const AutoSizeText('рейтинг'),
            SvgPicture.asset(
              colorFilter: const ColorFilter.mode(
                  AppThemeColor.blueColor, BlendMode.srcIn),
              'assets/icons/step_into_up.svg',
            ),
          ],
        )
      ],
    ));
  }
}
