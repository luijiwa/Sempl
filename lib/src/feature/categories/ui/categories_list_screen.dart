import 'package:flutter/material.dart';
import 'package:my_app/src/core/widget/custom_back_button.dart';
import 'package:my_app/src/core/widget/custom_radio_button.dart';
import 'package:my_app/src/feature/categories/ui/widgets/search_input_widget.dart';
import 'package:my_app/src/core/theme/theme.dart';

class CategoriesListScreen extends StatefulWidget {
  const CategoriesListScreen({super.key});

  @override
  _CategoriesListScreenState createState() => _CategoriesListScreenState();
}

class _CategoriesListScreenState extends State<CategoriesListScreen> {
  String? selectedCategory;

  final Map<String, List<String>> categoriesData = {
    'Косметика для волос': ['Продукт 1', 'Продукт 2', 'Продукт 3'],
    'Категория 2': ['Продукт 4', 'Продукт 5', 'Продукт 6'],
    'Категория 3': ['Продукт 12', 'Продукт 13', 'Продукт 14', 'Продукт 14'],
    'Категория 4': ['Продукт 7', 'Продукт 5', 'Продукт 6'],
  };

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: AppThemeColor.grey,
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              // pinned: true,
              backgroundColor: AppThemeColor.grey,
              title: Text('Категории'),
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: AppThemeColor.black,
              ),
              centerTitle: true,
              leading: CustomBackButton(),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              sliver: SliverToBoxAdapter(
                child: SearchInputWidget(),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: categoriesData.length,
                  (context, index) {
                    final category = categoriesData.keys.elementAt(index);
                    final products = categoriesData[category]!;
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
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.5),
                                    child: Text(category,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15)),
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
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            final product = products[index];
                            return Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4),
                                      child: Text(product,
                                          style: const TextStyle(fontSize: 15)),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
