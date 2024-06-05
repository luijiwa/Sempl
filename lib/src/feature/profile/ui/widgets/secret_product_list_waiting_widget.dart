import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/profile/bloc/profile_bloc.dart';

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
      sliver: SliverMainAxisGroup(slivers: [
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
                'МОИ ОЖИДАЕМЫЕ ОБРАЗЦЫ:',
                style: Theme.of(context).textTheme.appProfileTitle,
                maxLines: 1,
              ),
            ),
          ),
        ),

        // const ItemWithButtonWidget(
        //   imageUrl: 'assets/images/diamond.png',
        //   title: 'ПРОДУКТ ДЛЯ БЕЛЕНИЯ ЗУБОВ',
        //   subtitle: 'Ожидаемое время доставки: 15 января в 18:00',
        //   withDate: false,
        // ),

        ///TODO Если нет товаров для отзывов
        if (context.read<ProfileBloc>().state.orders.isEmpty)
          const EmptyReviewWidget(),
        // const ReviewListWidget(),
      ]),
    );
  }
}

class ReviewListWidget extends StatelessWidget {
  const ReviewListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return SliverList.separated(
      itemCount: 1,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => context.goNamed(AppRoutes.reviewItemsScreen.name),
        child: Material(
          elevation: 10,
          shadowColor: AppThemeColor.black.withOpacity(0.16),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 0.02545 * width,
              bottom: 0.06108 * width,
              left: 0.0509 * width,
              right: 0.0509 * width,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 0.3563 * width,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/secret_item_image.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0.0329987288 * width),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03)
                      .copyWith(bottom: width * 0.0084114407),
                  child: AutoSizeText(
                    'СЕКРЕТНЫЙ ПРОДУКТ ТОЛЬКО ДЛЯ ТЕБЯ',
                    style: Theme.of(context).textTheme.appBodySemiBold,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: AutoSizeText(
                    'Ожидаемое время доставки: 15 января в 18:00',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .appBodyMedium
                        .copyWith(fontSize: 13, color: AppThemeColor.grisTwo),
                    maxLines: 1,
                    minFontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 12),
    );
  }
}

class EmptyReviewWidget extends StatelessWidget {
  const EmptyReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return SliverPadding(
      padding: EdgeInsets.only(
        top: width * 0.1069762712,
        bottom: 0.0562919492 * width,
        left: width * 0.065,
        right: width * 0.065,
      ),
      sliver: SliverToBoxAdapter(
        child: AutoSizeText(
          'У ВАС ЕЩЕ НЕТ ПРОТЕСТИРОВАННЫХ ОБРАЗЦОВ :(',
          style: Theme.of(context).textTheme.itemDateDelivery,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
