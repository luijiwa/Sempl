import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/extentions/build_context_ext.dart';
import 'package:sempl/src/core/widget/star_rating_widget.dart';
import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart';

class ItemInEmptyListWidget extends StatelessWidget {
  const ItemInEmptyListWidget({
    required this.item,
    super.key,
    this.applyColorFilter = false,
  });
  final bool applyColorFilter;
  final NewSemplsData item;
  @override
  Widget build(BuildContext context) {
    final Widget image = item.photo.isEmpty
        ? Image.asset("assets/images/empty_avatar.png")
        : Image.network(item.photo);
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height,
        maxWidth: MediaQuery.sizeOf(context).width,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;
          final offset = height * 0.029;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width * 0.32576,
                      child: ClipRect(
                        child: image,
                      ),
                    ),
                    Text(
                      item.name.toUpperCase(),
                      style: context.text.itemName,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.sizeOf(context).width > 400
                            ? 400
                            : width,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.25)
                            .copyWith(top: 4, bottom: 11),
                        child: AutoSizeText(
                          item.description.toUpperCase(),
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: context.text.itemDescription,
                        ),
                      ),
                    ),
                    Text(
                      "${item.rating.toStringAsFixed(1)}  из ${item.countRating} отзывов"
                          .toUpperCase(),
                      style: context.text.itemRatingDescription,
                    ),
                    const SizedBox(height: 11),
                    StarRatingWidget(
                      size: width * 0.038175,
                      rating: item.rating.toInt(),
                    ),
                  ],
                ),
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25),
                      onTap: () => context.pushNamed(
                        AppRoutes.itemScreen.name,
                        pathParameters: {'id': item.id.toString()},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
