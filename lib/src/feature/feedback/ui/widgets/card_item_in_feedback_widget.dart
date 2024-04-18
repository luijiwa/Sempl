import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

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
    const String imageUrl =
        'https://s3-alpha-sig.figma.com/img/9813/6eb5/d7f50f5d7c326585b6a136c2f5303752?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GFD~GYA~T6K0zPtz4Wym7huMVyfLboQCv7Nev5VzzbSvR~8irhzjYqZZxIF-iPVtfdoOD7SxUfwHOhfo9nMN0veXBQ5hD17XetDvRRug9pJAIyKc43uACPsWT8AtnmOtJ4lU95wNqYtmUl-EU0KE~xawULqCIdFscTN3G4Q4UM1by9vos4u0sN-BdDw2tEeZQjwq2irhoJuOQGN5SNbUh~Yf-XgxmWOZbrHaXeCe520lD~OyYGbhnqQAxMbp0hXDJkqoup38L038yqRiAPcaBMPMOkZwAUxWkUUmvHgXBPnJTdrsxZ5RYQ9KZcMseKk97nHGNaKI7x6BnSqjRlenVQ__';

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
                color: Colors.black.withOpacity(0.02),
                blurRadius: 10,
                spreadRadius: 10,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
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
