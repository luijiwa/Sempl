import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/item/bloc/item_bloc.dart';
import 'package:sempl/src/feature/item/item_cart_widget.dart';
import 'package:sempl/src/feature/item/review_card_widget.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:shimmer/shimmer.dart';

class ItemScreen extends StatefulWidget {
  final String id;
  const ItemScreen({super.key, required this.id});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  late final ItemBloc _itemBloc;
  @override
  void initState() {
    super.initState();
    _itemBloc = ItemBloc(DependenciesScope.of(context).itemRepository);
    _itemBloc.add(ItemEvent.loadItem(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return BlocProvider(
      create: (context) => _itemBloc,
      child: Scaffold(
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
      )),
    );
  }
}

class CommentsRowWidget extends StatelessWidget {
  const CommentsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final ratingCount = context.read<ItemBloc>().state.ratingCount;
    return SliverToBoxAdapter(
        child: BlocBuilder<ItemBloc, ItemState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
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
                        AppThemeColor.blueColor, BlendMode.srcIn),
                    'assets/icons/step_into.svg',
                  ),
                ],
              ),
              SizedBox(width: width * 0.02),
              Wrap(children: [
                const AutoSizeText('рейтинг'),
                SvgPicture.asset(
                  colorFilter: const ColorFilter.mode(
                      AppThemeColor.blueColor, BlendMode.srcIn),
                  'assets/icons/step_into_up.svg',
                )
              ]),
            ]);
          default:
            return shimmerCommentsItemCard(ratingCount, width, height);
        }
      },
    ));
  }

  Shimmer shimmerCommentsItemCard(
      String ratingCount, double width, double height) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Row(children: [
        Container(
          height: width * 0.04,
          width: width * 0.43,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: width * 0.04,
          width: width * 0.22,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
        ),
      ]),
    );
  }
}
