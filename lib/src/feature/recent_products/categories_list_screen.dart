import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/custom_back_button.dart';
import 'package:my_app/src/core/components/custom_radio_button.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/src/feature/recent_products/search_input_widget.dart';
import 'package:my_app/theme.dart';

class CategoriesListScreen extends StatefulWidget {
  const CategoriesListScreen({Key? key}) : super(key: key);

  @override
  _CategoriesListScreenState createState() => _CategoriesListScreenState();
}

class _CategoriesListScreenState extends State<CategoriesListScreen> {
  String? selectedCategory;

  final Map<String, List<String>> categoriesData = {
    'Категория 1': ['Продукт 1', 'Продукт 2', 'Продукт 3'],
    'Категория 2': ['Продукт 4', 'Продукт 5', 'Продукт 6'],
    'Категория 3': ['Продукт 12', 'Продукт 13', 'Продукт 14', 'Продукт 14'],
    'Категория 4': ['Продукт 7', 'Продукт 5', 'Продукт 6'],
  };

  @override
  Widget build(BuildContext context) {
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
                fontFamily: 'SourceSansProBold',
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
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final category = categoriesData.keys.elementAt(index);
                  final products = categoriesData[category]!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(),
                        child: ListTile(
                          title: Text(category,
                              style: const TextStyle(
                                  fontFamily: 'SourceSansProSemibold',
                                  fontSize: 15)),
                          trailing: CustomRadioButton(
                            value: index % 3 == 0,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          final product = products[index];
                          return Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: ListTile(
                              title: Text(product),
                              trailing: CustomRadioButton(
                                value: index % 3 == 0,
                                onChanged: (value) {},
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
                childCount: categoriesData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
