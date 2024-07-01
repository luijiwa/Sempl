import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/widget/custom_radio_button.dart';
import 'package:sempl/src/feature/main/bloc/main_screen_bloc.dart';
import 'package:sempl/src/feature/recent_products/bloc/recent_products_bloc.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({
    required this.height,
    super.key,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    final categoriesData = context.read<MainScreenBloc>().state.categories;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      sliver: BlocBuilder<RecentProductsBloc, RecentProductsState>(
        buildWhen: (previous, current) =>
            previous.screenCategoriesStatus != current.screenCategoriesStatus ||
            previous.categories != current.categories,
        builder: (context, state) {
          final length = state.searchQuery.isEmpty
              ? categoriesData.length
              : categoriesData.length; // state.searchResults.length;
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: length,
              (context, index) {
                final category = state.searchQuery.isEmpty
                    ? categoriesData.elementAt(index)
                    : categoriesData.elementAt(
                        index); // state.searchResults.elementAt(index);
                final categoryName = category.name;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2.5),
                                child: Text(
                                  categoryName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            CustomRadioButton(
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: category.subcategories.length,
                      itemBuilder: (context, subIndex) {
                        final products = category.subcategories[subIndex];

                        final product = products.name;
                        return Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    product,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                              CustomRadioButton(
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
