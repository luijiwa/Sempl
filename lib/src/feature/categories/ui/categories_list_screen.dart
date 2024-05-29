import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/core/widget/custom_radio_button.dart';
import 'package:sempl/src/feature/categories/ui/widgets/search_input_widget.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/main/bloc/main_screen_bloc.dart';

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
  void initState() {
    super.initState();
    context.read<MainScreenBloc>().add(const MainScreenEvent.loadCategories());
  }

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
            BlocBuilder<MainScreenBloc, MainScreenState>(
              buildWhen: (previous, current) =>
                  previous.screenCategoriesStatus !=
                  current.screenCategoriesStatus,
              builder: (context, state) {
                switch (state.screenCategoriesStatus) {
                  case ScreenStatus.success:
                    return CategoriesListWidget(height: height);
                  default:
                    return const SliverFillRemaining(
                      child: Center(
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    final categoriesData = context.read<MainScreenBloc>().state.categories;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: categoriesData.length,
          (context, index) {
            final category = categoriesData.elementAt(index);
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
                            padding: const EdgeInsets.symmetric(vertical: 2.5),
                            child: Text(categoryName,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15)),
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
                              padding: const EdgeInsets.symmetric(vertical: 4),
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
    );
  }
}
