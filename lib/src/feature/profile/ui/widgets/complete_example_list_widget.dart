import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/theme/text_theme.dart';
import 'package:my_app/src/core/utils/logger.dart';

class CompleteExampleListWidget extends StatelessWidget {
  const CompleteExampleListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    logger.w(width * 0.0204);

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      sliver: SliverList.separated(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Material(
            shadowColor: Colors.black.withOpacity(0.02),
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                top: height * 0.0177,
                bottom: height * 0.0236,
                left: width * 0.0204,
                right: width * 0.0204,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'ОЧИСТИТЕЛЬ ЗУБОВ',
                        style: Theme.of(context)
                            .textTheme
                            .appBodySemiBold
                            .copyWith(color: Colors.black),
                      ),
                      SizedBox(height: height * 0.0083),
                      const AutoSizeText('доставлено 15 января 2023г.'),
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    'assets/images/arrow_right.svg',
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 4),
      ),
    );
  }
}
