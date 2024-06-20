import 'package:flutter/material.dart';
import 'package:sempl/src/core/constant/generated/assets.gen.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/extentions/build_context_ext.dart';
import 'package:sempl/src/feature/cart/cart_scope.dart';
import 'package:sempl/src/feature/cart/model/cart_item.dart';

class ProductCard extends StatelessWidget {
  final CartItem item;
  final double width;
  const ProductCard({required this.item, required this.width, super.key});
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 0.272315 * width,
        child: Row(
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.network(
                  item.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        item.name.toUpperCase(),
                        style: context.text.iteminCartName,
                      ),
                      const SizedBox(height: 3.0),
                      Text(
                        item.description,
                        style: context.text.itemDescription,
                      ),
                    ],
                  ),
                  const Spacer(),
                  _DeleteButtonRowWidget(item: item),
                ],
              ),
            ),
          ],
        ),
      );
}

class _DeleteButtonRowWidget extends StatelessWidget {
  const _DeleteButtonRowWidget({
    required this.item,
  });

  final CartItem item;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Assets.icons.deleteIcon.svg(
                  colorFilter: const ColorFilter.mode(
                    AppThemeColor.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const Text('Удалить'),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () => CartScope.of(context).deleteItemFromCart(item.id),
              ),
            ),
          ),
        ],
      );
}
