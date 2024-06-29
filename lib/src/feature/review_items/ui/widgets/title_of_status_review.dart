import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/review_items/bloc/review_items_bloc.dart';
import 'package:sempl/src/feature/review_items/model/status_of_order.dart';

class TitleOfStatusReview extends StatelessWidget {
  const TitleOfStatusReview({
    super.key,
    required this.height,
    required this.width,
    // this.statusOfOrder = StatusOfOrder.deliveyWaiting,
  });

  final double height;
  final double width;
  // final StatusOfOrder statusOfOrder;
  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: EdgeInsets.only(
          top: height * 0.03068,
          bottom: width * 0.04,
          right: width * 0.05,
        ),
        sliver: SliverToBoxAdapter(
            child: GestureDetector(
          onTap: () => context
              .read<ReviewItemsBloc>()
              .add(const ReviewItemsEvent.changeStatusOfOrder()),
          child: BlocBuilder<ReviewItemsBloc, ReviewItemsState>(
            buildWhen: (previous, current) =>
                previous.statusOfOrder != current.statusOfOrder,
            builder: (context, state) {
              switch (state.statusOfOrder) {
                case StatusOfOrder.deliveyWaiting:
                  return const _WaitingDeliveryTitle();
                case StatusOfOrder.waitingReview:
                  return const _WaitingReviewTitle();
                case StatusOfOrder.isOrderDone:
                  return const _OrderDoneTitle();
                case StatusOfOrder.isSecretLot:
                  return const _SecretLotTitle();
              }
            },
          ),
        )),
      );
}

class _WaitingDeliveryTitle extends StatelessWidget {
  const _WaitingDeliveryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: AutoSizeText(
              'МОИ ОЖИДАЕМЫЕ СЕМПЛЫ:',
              style: Theme.of(context).textTheme.appProfileTitle,
              maxLines: 1,
            ),
          ),
          const SizedBox(height: 5),
          Flexible(
            child: AutoSizeText(
              'Ожидаемое время доставки: 15 января в 18:00',
              style: Theme.of(context).textTheme.appBodyMedium.copyWith(
                    color: AppThemeColor.blueColor,
                  ),
              maxLines: 1,
            ),
          ),
        ],
      );
}

class _WaitingReviewTitle extends StatelessWidget {
  const _WaitingReviewTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: AutoSizeText(
              'ОЖИДАЮТ ОТЗЫВА:',
              style: Theme.of(context).textTheme.appProfileTitle,
              maxLines: 1,
            ),
          ),
          const SizedBox(height: 5),
          Flexible(
            child: AutoSizeText(
              'Доставлен 15.03.23',
              style: Theme.of(context).textTheme.appBodyMedium.copyWith(
                    color: AppThemeColor.black,
                  ),
              maxLines: 1,
            ),
          ),
          const SizedBox(height: 5),
          Flexible(
            child: AutoSizeText(
              '5 из 10 товаров ожидают отзыва',
              style: Theme.of(context).textTheme.appBodyMedium.copyWith(
                    color: AppThemeColor.rose,
                  ),
              maxLines: 1,
            ),
          ),
        ],
      );
}

class _OrderDoneTitle extends StatelessWidget {
  const _OrderDoneTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: AutoSizeText(
              'ЗАКАЗ ЗАВЕРШЁН 15.01.23',
              style: Theme.of(context).textTheme.appProfileTitle,
              maxLines: 1,
            ),
          ),
          const SizedBox(height: 5),
          Flexible(
            child: AutoSizeText(
              '10 семплов',
              style: Theme.of(context).textTheme.appBodyMedium.copyWith(
                    color: AppThemeColor.blueColor,
                  ),
              maxLines: 1,
            ),
          ),
        ],
      );
}

class _SecretLotTitle extends StatelessWidget {
  const _SecretLotTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) => AutoSizeText(
        'СЕКРЕТНЫЙ ЛОТ СПЕЦИАЛЬНО ДЛЯ',
        style: Theme.of(context).textTheme.appProfileTitle,
        maxLines: 2,
      );
}
