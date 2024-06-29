import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/review_items/bloc/review_items_bloc.dart';
import 'package:sempl/src/feature/review_items/ui/widgets/item_with_button_widget.dart';
import 'package:sempl/src/feature/review_items/ui/widgets/item_with_date_widget.dart';
import 'package:sempl/src/feature/review_items/ui/widgets/title_of_status_review.dart';

class ReviewItemsScreen extends StatefulWidget {
  const ReviewItemsScreen({super.key});

  @override
  State<ReviewItemsScreen> createState() => _ReviewItemsScreenState();
}

class _ReviewItemsScreenState extends State<ReviewItemsScreen> {
  late final ReviewItemsBloc _reviewItemsBloc;
  @override
  void initState() {
    super.initState();
    _reviewItemsBloc =
        ReviewItemsBloc(DependenciesScope.of(context).reviewItemsRepository);
    _reviewItemsBloc.add(const ReviewItemsEvent.started());
  }

  @override
  void dispose() {
    super.dispose();
    _reviewItemsBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return BlocProvider(
      create: (context) => _reviewItemsBloc,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              leading: CustomBackButton(),
              title: Text('SEMPL!'),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              sliver: SliverMainAxisGroup(
                slivers: [
                  TitleOfStatusReview(height: height, width: width),
                  SliverPadding(padding: EdgeInsets.only(top: height * 0.0177)),
                  const ItemWithDateWidget(),
                  const SliverPadding(padding: EdgeInsets.only(top: 4)),
                  const ItemWithButtonWidget(),
                  const SliverPadding(padding: EdgeInsets.only(top: 4)),
                  const ItemWithButtonWidget(
                    isReviewExist: true,
                  ),
                  const SliverToBoxAdapter(
                    child: BottomPadding(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
