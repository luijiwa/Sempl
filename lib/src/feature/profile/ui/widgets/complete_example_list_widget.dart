import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';

class CompleteExampleListWidget extends StatelessWidget {
  const CompleteExampleListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      sliver: SliverMainAxisGroup(slivers: [
        SliverPadding(
          padding:
              EdgeInsets.only(bottom: height * 0.0153, right: width * 0.08),
          sliver: SliverToBoxAdapter(
            child: AutoSizeText(
              'МОИ ЗАВЕРШЁННЫЕ ОБРАЗЦЫ:',
              style: Theme.of(context).textTheme.appProfileTitle,
              maxLines: 1,
            ),
          ),
        ),
        SliverList.separated(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Material(
              shadowColor: AppThemeColor.black.withOpacity(0.02),
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => context.goNamed(AppRoutes.finishedSempls.name),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: width * 0.038175,
                    bottom: width * 0.0509,
                    left: width * 0.0204,
                    right: width * 0.0204,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AutoSizeText(
                            'ОЧИСТИТЕЛЬ ЗУБОВ',
                            style: Theme.of(context)
                                .textTheme
                                .appBodySemiBold
                                .copyWith(color: AppThemeColor.black),
                          ),
                          AutoSizeText(
                            'Доставлено 15 января 2023г.',
                            style: Theme.of(context).textTheme.itemDateDelivery,
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        'assets/icons/arrow_right.svg',
                        colorFilter: const ColorFilter.mode(
                          AppThemeColor.blueColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (_, __) => const SizedBox(height: 4),
        ),
      ]),
    );
  }
}
