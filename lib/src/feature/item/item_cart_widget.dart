import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/components/star_rating_widget.dart';
import 'package:my_app/src/feature/delivery/delivery_screen.dart';
import 'package:my_app/theme.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22),
        padding: const EdgeInsets.symmetric(horizontal: 15)
            .copyWith(top: 25, bottom: 35),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          border: Border.all(
              width: 0.5, color: AppThemeColor.gris.withOpacity(0.5)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const StarRatingWidget(),
                    AutoSizeText(
                      '5,0 по 89 отзывам'.toUpperCase(),
                      style: const TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_rounded,
                      color: AppThemeColor.blueColor,
                    )),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/images/share_icon.svg',
                    colorFilter: const ColorFilter.mode(
                        AppThemeColor.blueColor, BlendMode.srcIn),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Image.asset(
              "assets/images/item_image_in_detail.png",
              height: height * 0.22,
            ),
            SizedBox(height: height * 0.01),
            Text(
              "Aromenage".toUpperCase(),
              style: const TextStyle(
                  fontSize: 15, fontFamily: 'SourceSansProBold'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.115),
              child: AutoSizeText(
                  "Гель-концентрат для стирки Универсальный Французская орхидея, 0,9 л"
                      .toUpperCase(),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 13,
                    fontFamily: 'SourceSansPro',
                    height: 1.2,
                  )),
            ),
            SizedBox(height: height * 0.016),
            SizedBox(
              height: 0.055 * height,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DeliveryScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF99BFD4),
                ),
                child: AutoSizeText(
                  'КУПИТЬ ЗА БАЛЛЫ',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: width > 320 ? 15 : 12,
                    color: AppThemeColor.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.007),
          ],
        ),
      ),
    );
  }
}
