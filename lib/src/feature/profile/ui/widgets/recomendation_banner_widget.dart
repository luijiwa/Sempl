import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/core/theme/text_theme.dart';
import 'package:my_app/src/core/utils/logger.dart';

class RecomendationBannerWidget extends StatelessWidget {
  const RecomendationBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      sliver: SliverToBoxAdapter(
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              color: Color(0xffCFF3E9),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/Background 3.png',
                  ))),
          width: double.infinity,
          padding:
              const EdgeInsets.only(top: 10, bottom: 24, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Text(
                  'МЫ СОБРАЛИ ПРОДУКТЫ, ЧТОБЫ ПОПРОБОВАТЬ СПЕЦИАЛЬНО ДЛЯ ВАС!',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.appTitleMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: height * 0.01888),
                child: Text(
                  'НА ОСНОВЕ ДАННЫХ ВАШЕЙ АНКЕТЫ МЫ СОБРАЛИ ДЛЯ ВАС КОРЗИНУ ИНТЕРЕСНЫХ ТОВАРОВ'
                      .toUpperCase(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .appBodyMedium
                      .copyWith(fontSize: 13),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: height * 0.018),
                    textStyle: Theme.of(context).textTheme.appBodyMedium,
                  ),
                  onPressed: () {},
                  child: Text('ХОЧУ ЭТО!',
                      style: Theme.of(context).textTheme.appBodyMedium),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
