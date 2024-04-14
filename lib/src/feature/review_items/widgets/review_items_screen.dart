import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/router/app_routes.dart';
import 'package:my_app/src/core/theme/button_theme.dart';
import 'package:my_app/src/core/theme/text_theme.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/item/item_screen.dart';
import 'package:my_app/src/feature/profile/ui/widgets/basic_sliver_custom_app_bar_widget.dart';
import 'package:my_app/src/feature/review_items/widgets/item_with_button_widget.dart';
import 'package:my_app/src/feature/review_items/widgets/item_with_date_widget.dart';
import 'package:my_app/theme.dart';

class ReviewItemsScreen extends StatelessWidget {
  const ReviewItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const BasicSliverCustomAppBarWidget(),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverMainAxisGroup(slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                  top: height * 0.03068,
                  bottom: height * 0.03068,
                  right: width * 0.12),
              sliver: SliverToBoxAdapter(
                  child: AutoSizeText(
                'СЕКРЕТНЫЙ ЛОТ СPEЦИАЛЬНО ДЛЯ ВАС!',
                style: Theme.of(context).textTheme.appTitleMedium,
                maxLines: 2,
              )),
            ),
            const CommentsRowWidget(),
            SliverPadding(padding: EdgeInsets.only(top: height * 0.0177)),
            const ItemWithDateWidget(),
            const SliverPadding(padding: EdgeInsets.only(top: 4)),
            const ItemWithButtonWidget(),
            const SliverToBoxAdapter(
              child: BottomPadding(),
            )
          ]),
        )
      ],
    ));
  }
}
