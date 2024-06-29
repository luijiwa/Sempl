import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/profile/ui/widgets/empty_review_widget.dart';
import 'package:sempl/src/feature/profile/ui/widgets/review_list_widget.dart';
import 'package:sempl/src/feature/profile/ui/widgets/item_with_sempls_count_banner_widget.dart';

class SecretProductWaitingListWidget extends StatefulWidget {
  const SecretProductWaitingListWidget({
    super.key,
  });

  @override
  State<SecretProductWaitingListWidget> createState() =>
      _SecretProductWaitingListWidgetState();
}

class _SecretProductWaitingListWidgetState
    extends State<SecretProductWaitingListWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverPadding(
            padding:
                EdgeInsets.only(bottom: height * 0.0153, right: width * 0.08),
            sliver: SliverToBoxAdapter(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _index = _index == 2 ? 0 : _index + 1;
                  });
                },
                child: AutoSizeText(
                  'МОИ ОЖИДАЕМЫЕ СЕМПЛЫ:',
                  style: Theme.of(context).textTheme.appProfileTitle,
                  maxLines: 1,
                ),
              ),
            ),
          ),

          if (_index == 1)
            const ItemWithSemplsCountBannerWidget(
              imageUrl: 'assets/images/diamond.png',
              title: 'ПРОДУКТ ДЛЯ БЕЛЕНИЯ ЗУБОВ',
              subtitle: 'Ожидаемое время доставки: 15 января в 18:00',
              withDate: false,
            ),

          ///TODO Если нет товаров для отзывов
          // if (context.read<ProfileBloc>().state.orders.isEmpty)
          if (_index == 0) const EmptyReviewWidget(),
          if (_index == 2) const ReviewListWidget(),
        ],
      ),
    );
  }
}
