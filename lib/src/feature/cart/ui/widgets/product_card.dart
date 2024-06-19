import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sempl/src/core/constant/generated/assets.gen.dart';
import 'package:sempl/src/core/utils/extentions/build_context_ext.dart';
import 'package:sempl/src/feature/cart/model/cart_item.dart';

class ProductCard extends StatelessWidget {
  final CartItem item;

  const ProductCard({super.key, required this.item});
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: ClipRect(
                  // width: 0.272315 * MediaQuery.of(context).size.width,
                  child: Image.network(
                    item.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name.toUpperCase(),
                    style: context.text.itemName,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    item.description.toUpperCase(),
                    style: context.text.itemDescription,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(Icons.delete),
                        ),
                        Text('Удалить'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
