import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/constant/generated/assets.gen.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/categories/ui/categories_list_screen.dart';
import 'package:sempl/src/feature/main/bloc/main_screen_bloc.dart';
import 'package:sempl/src/feature/recent_products/bloc/recent_products_bloc.dart';

class CategoriesButtonWidget extends StatelessWidget {
  const CategoriesButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 0.1099957627 * width,
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {
            final myBloc = BlocProvider.of<RecentProductsBloc>(context);

            // Переход на второй экран с передачей блока
            Navigator.of(context).push(
              MaterialPageRoute<CategoriesListScreen>(
                builder: (context) => BlocProvider.value(
                  value: myBloc,
                  child: const CategoriesListScreen(),
                ),
              ),
            );
          },
          child: Row(
            children: [
              Assets.icons.subjectIcon.svg(
                colorFilter: const ColorFilter.mode(
                  AppThemeColor.blueColor,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 5),
              AutoSizeText(
                'Категории',
                style: TextStyle(
                  fontSize: width > 320 ? 15 : 12,
                  color: AppThemeColor.black,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
                weight: 500,
                color: AppThemeColor.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
