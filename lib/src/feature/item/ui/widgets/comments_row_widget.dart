import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/feature/item/bloc/item_bloc.dart';
import 'package:shimmer/shimmer.dart';

class CommentsRowWidget extends StatelessWidget {
  const CommentsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
        child: BlocBuilder<ItemBloc, ItemState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        final ratingCount = context.read<ItemBloc>().state.ratingCount;

        switch (state.status) {
          case ScreenStatus.success:
            return Row(children: [
              AutoSizeText(
                'КОММЕНТАРИИ ($ratingCount)',
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              const Spacer(),
              Wrap(
                children: [
                  const AutoSizeText('новые'),
                  SvgPicture.asset(
                    colorFilter: const ColorFilter.mode(
                        AppThemeColor.blueColor, BlendMode.srcIn,),
                    'assets/icons/step_into.svg',
                  ),
                ],
              ),
              SizedBox(width: width * 0.02),
              Wrap(children: [
                const AutoSizeText('рейтинг'),
                SvgPicture.asset(
                  colorFilter: const ColorFilter.mode(
                      AppThemeColor.blueColor, BlendMode.srcIn,),
                  'assets/icons/step_into_up.svg',
                ),
              ],),
            ],);
          default:
            return _ShimmerItemComments(width: width);
        }
      },
    ),);
  }
}

class _ShimmerItemComments extends StatelessWidget {
  const _ShimmerItemComments({
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Row(children: [
        Container(
          height: width * 0.04,
          width: width * 0.43,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white,),
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: width * 0.04,
          width: width * 0.22,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white,),
        ),
      ],),
    );
}
