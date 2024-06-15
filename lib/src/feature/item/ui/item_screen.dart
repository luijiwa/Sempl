import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/item/bloc/item_bloc.dart';
import 'package:sempl/src/feature/item/ui/widgets/comments_row_widget.dart';
import 'package:sempl/src/feature/item/ui/widgets/item_cart_widget.dart';
import 'package:sempl/src/feature/item/ui/widgets/review_card_widget.dart';

class ItemScreen extends StatefulWidget {
  final String id;
  const ItemScreen({required this.id, super.key});

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
          floatingActionButton:
              kDebugMode ? FloatingActionButton(onPressed: () {}) : null,
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
              ),
            ],
          ),),
    );
  }
}
