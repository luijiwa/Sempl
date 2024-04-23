import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/core/components/star_rating_widget.dart';
import 'package:my_app/src/core/router/app_routes.dart';
import 'package:my_app/src/core/theme/theme.dart';

class ItemInListWidget extends StatelessWidget {
  const ItemInListWidget({super.key, this.applyColorFilter = false});
  final bool applyColorFilter;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final offset = height * 0.029;
    return InkWell(
      onTap: () {
        context.pushNamed(AppRoutes.itemScreen.name);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: offset),
            if (applyColorFilter) // Проверяем, нужно ли применять фильтр
              ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  AppThemeColor.grey,
                  BlendMode.multiply,
                ),
                child: Image.asset("assets/images/item_image.png"),
              )
            else
              Image.asset("assets/images/item_image.png"),
            Text("Vinopure".toUpperCase(),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.25)
                  .copyWith(top: 4, bottom: 11),
              child: AutoSizeText(
                  "Sérum salicylique Anti-imperfections 30ml - Caudalie"
                      .toUpperCase(),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1,
                  )),
            ),
            Text(
              "5.0 из 89 отзывов".toUpperCase(),
              style: const TextStyle(fontSize: 8),
            ),
            const SizedBox(height: 11),
            const StarRatingWidget(),
            SizedBox(height: offset),
          ],
        ),
      ),
    );
  }
}
