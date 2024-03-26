import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/feature/item/item_screen.dart';

class ItemInListWidget extends StatelessWidget {
  const ItemInListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ItemScreen(),
          ),
        );
      },
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/item_image.png"),
            const Text("Vinopure"),
            const AutoSizeText(
                "Sérum salicylique Anti-imperfections 30ml - Caudalie"),
            const Text("5.0 из 89 отзывов"),
          ],
        ),
      ),
    );
  }
}
