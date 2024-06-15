import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class CardItemInFeedbackWidget extends StatelessWidget {
  const CardItemInFeedbackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    const String title = 'ПРОДУКТ ДЛЯ БЕЛЕНИЯ ЗУБОВ';
    const String subtitle = 'Доставлено: 15 января В 18:00';
    const String imageUrl = 'assets/images/diamond.png';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(
          top: width * 0.036,
          bottom: width * 0.055,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            boxShadow: [
              BoxShadow(
                color: AppThemeColor.black.withOpacity(0.02),
                blurRadius: 10,
                spreadRadius: 10,
              ),
            ],),
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              height: width * 0.35,
            ),
            SizedBox(height: width * 0.05),
            AutoSizeText(
              title,
              style: Theme.of(context)
                  .textTheme
                  .appBodySemiBold
                  .copyWith(color: AppThemeColor.black),
            ),
            SizedBox(height: height * 0.0086),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: AutoSizeText(
                subtitle,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: Theme.of(context).textTheme.itemDateDelivery,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
