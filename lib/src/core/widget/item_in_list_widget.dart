import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/star_rating_widget.dart';
import 'package:sempl/src/feature/main/bloc/main_screen_bloc.dart';
import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart';

class ItemInListWidget extends StatelessWidget {
  const ItemInListWidget({
    required this.item,
    super.key,
    this.applyColorFilter = false,
  });
  final bool applyColorFilter;
  final NewSemplsData item;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final imageSize = width * 0.357;
    final offset = height * 0.029;
    final Widget image = item.photo.isEmpty
        ? Image.asset("assets/images/empty_avatar.png")
        : Image.network(item.photo);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: offset),
              SizedBox(
                height: imageSize,
                width: imageSize,
                child: applyColorFilter
                    ? ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                          AppThemeColor.grey,
                          BlendMode.multiply,
                        ),
                        child: image,
                      )
                    : image,
              ),
              // if (applyColorFilter) // Проверяем, нужно ли применять фильтр
              //   ColorFiltered(
              //     colorFilter: const ColorFilter.mode(
              //       AppThemeColor.grey,
              //       BlendMode.multiply,
              //     ),
              //     child: Image.asset("assets/images/item_image.png"),
              //   )
              // else
              //   Image.asset("assets/images/item_image.png"),
              Text(
                item.name.toUpperCase(),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.25)
                    .copyWith(top: 4, bottom: 11),
                child: AutoSizeText(
                  item.description.toUpperCase(),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1,
                  ),
                ),
              ),
              Text(
                "${item.rating.toStringAsFixed(1)}  из ${item.countRating} отзывов"
                    .toUpperCase(),
                style: const TextStyle(fontSize: 10),
              ),
              const SizedBox(height: 11),
              StarRatingWidget(
                size: width * 0.038175,
                rating: item.rating.toInt(),
              ),
              SizedBox(height: offset),
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
  }
}
