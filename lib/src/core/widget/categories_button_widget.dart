import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';

class CategoriesButtonWidget extends StatelessWidget {
  const CategoriesButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
        child: SizedBox(
      height: 0.1099957627 * width,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          context.pushNamed(AppRoutes.categories.name);
        },
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/subject_icon.svg',
              colorFilter: const ColorFilter.mode(
                  AppThemeColor.blueColor, BlendMode.srcIn),
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
    ));
  }
}
