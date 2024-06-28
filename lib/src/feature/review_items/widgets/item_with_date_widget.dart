import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class ItemWithDateWidget extends StatelessWidget {
  const ItemWithDateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(top: height * 0.0118, bottom: height * 0.0294),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          border: Border.all(color: AppThemeColor.gris.withOpacity(0.1)),
        ),
        child: Column(
          children: [
            SizedBox(height: height * 0.01),
            Image.asset(
              "assets/images/listerine.jpeg",
              height: height * 0.22,
            ),
            SizedBox(height: height * 0.016),
            Text(
              "ОЧИСТИТЕЛЬ ЗУБОВ",
              style: Theme.of(context)
                  .textTheme
                  .appBodySemiBold
                  .copyWith(color: AppThemeColor.black),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.12),
              child: AutoSizeText(
                "Доставлено: 15.03.23",
                textAlign: TextAlign.center,
                maxLines: 1,
                style: Theme.of(context).textTheme.itemDateDelivery,
              ),
            ),
            SizedBox(height: height * 0.016),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'ОТЗЫВ ОСТАВЛЕН',
                  style: Theme.of(context)
                      .textTheme
                      .itemDateDelivery
                      .copyWith(color: AppThemeColor.green),
                ),
                SizedBox(width: width * 0.02),
                const Icon(
                  Icons.check_outlined,
                  color: AppThemeColor.green,
                  size: 20,
                ),
                // SvgPicture.asset('assets/icons/review_icon.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
