import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/feature/categories/ui/widgets/categories_list_widget.dart';
import 'package:sempl/src/feature/main/bloc/main_screen_bloc.dart';

class CategoriesListScreen extends StatefulWidget {
  const CategoriesListScreen({super.key});

  @override
  _CategoriesListScreenState createState() => _CategoriesListScreenState();
}

class _CategoriesListScreenState extends State<CategoriesListScreen> {
  String? selectedCategory;

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
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              sliver: SliverToBoxAdapter(
                child: TextField(
                  decoration: Theme.of(context)
                      .inputDecorationTheme
                      .searchInput
                      .copyWith(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: height * 0.013,
                          horizontal: height * 0.023,
                        ),
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Поиск в категориях',
                      ),
                ),
                //  SearchInputWidget(),
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
