import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/text_theme.dart';
import 'package:my_app/theme.dart';

class SecretProductWaitingListWidget extends StatelessWidget {
  const SecretProductWaitingListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      sliver: SliverList.separated(
        itemCount: 1,
        itemBuilder: (context, index) => Material(
          elevation: 10,
          shadowColor: Colors.black.withOpacity(0.16),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 10, bottom: 24, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/secret_item_image.png'),
                Text(
                  'СЕКРЕТНЫЙ ПРОДУКТ ТОЛЬКО ДЛЯ ТЕБЯ',
                  style: Theme.of(context).textTheme.appBodySemiBold,
                  textAlign: TextAlign.center,
                ),
                Text('Ожидаемое время доставки: 15 января в 18:00',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .appBodyMedium
                        .copyWith(fontSize: 13, color: AppThemeColor.grisTwo)),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
      ),
    );
  }
}
