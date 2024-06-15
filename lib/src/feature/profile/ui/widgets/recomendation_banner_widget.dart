import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

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
          height: 0.95 * width, //   height: 0.9166313559 * width,
          constraints: const BoxConstraints(minHeight: 335),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            color: Color(0xffCFF3E9),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/gift.png',
              ),
            ),
          ),
          width: double.infinity,
          padding: EdgeInsets.only(
              top: width * 0.02545,
              bottom: width * 0.06108,
              left: width * 0.05,
              right: width * 0.05,),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: width * 0.0280381356)
                    .copyWith(left: width * 0.035, right: width * 0.035),
                child: SizedBox(
                  height: 0.24432 * width,
                  child: AutoSizeText(
                    'МЫ СОБРАЛИ ПРОДУКТЫ,\nЧТОБЫ ПОПРОБОВАТЬ\nСПЕЦИАЛЬНО ДЛЯ ВАС!',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.appTitleMedium,
                    maxLines: 3,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: width * 0.035),
                child: SizedBox(
                  height: 0.08144 * width,
                  child: AutoSizeText(
                    'НА ОСНОВЕ ДАННЫХ ВАШЕЙ АНКЕТЫ МЫ СОБРАЛИ ДЛЯ ВАС КОРЗИНУ ИНТЕРЕСНЫХ ТОВАРОВ',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .appBodyMedium
                        .copyWith(fontSize: 13),
                    maxLines: 2,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: width * 0.0388220339),
                      backgroundColor: Colors.white,),
                  onPressed: () {},
                  child: Text('ХОЧУ ЭТО!',
                      style: Theme.of(context).textTheme.appBodyMedium,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
