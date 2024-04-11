import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/points_widget.dart';
import 'package:my_app/src/core/theme/text_theme.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/profile/ui/widgets/complete_example_list_widget.dart';
import 'package:my_app/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    logger.w(height * 0.0153);
    return Scaffold(
      backgroundColor: AppThemeColor.grey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('SEMPL!'),
            centerTitle: true,
            titleTextStyle: Theme.of(context).textTheme.appTitleMedium,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            sliver: SliverToBoxAdapter(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: width * 0.2,
                      height: width * 0.2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xff7c94b6),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/profile.jpg'),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: AppThemeColor.blueColor,
                          width: 1.0,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: width * 0.05,
                        height: width * 0.05,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppThemeColor.blueColor,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            )),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: width * 0.03,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('КАСИА ЛАНГЕР',
                        style: Theme.of(context).textTheme.appTitleMedium),
                    const AutoSizeText(
                      "@WOLFLIKEMEEE",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'SourceSansProBold',
                        color: AppThemeColor.blueColor,
                      ),
                      maxLines: 1,
                    ),
                    const PointsWidget(),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppThemeColor.blueColor,
                      // shape: const StadiumBorder(),
                      elevation: 0,
                      textStyle: Theme.of(context)
                          .textTheme
                          .appBodyMedium
                          .copyWith(color: Colors.white, fontSize: 12),
                    ),
                    child: const Row(
                      children: [
                        Text('ИЗМЕНИТЬ '),
                        Icon(Icons.padding),
                      ],
                    ))
              ],
            )),
          ),
          SliverToBoxAdapter(child: SizedBox(height: height * 0.0388)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(bottom: height * 0.0153),
            sliver: SliverToBoxAdapter(
              child: Text(
                'МОИ ОЖИДАЕМЫЕ ОБРАЗЦЫ',
                style: Theme.of(context).textTheme.appTitleMedium,
              ),
            ),
          ),
          SliverPadding(
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
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 24, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/serum.png'),
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
                              .copyWith(
                                  fontSize: 13, color: AppThemeColor.grisTwo)),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 12),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: height * 0.0388)),
          SliverPadding(
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
                padding: const EdgeInsets.only(
                    top: 10, bottom: 24, left: 20, right: 20),
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
                          padding:
                              EdgeInsets.symmetric(vertical: height * 0.018),
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
          ),
          SliverToBoxAdapter(child: SizedBox(height: height * 0.0388)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22)
                .copyWith(bottom: height * 0.0153),
            sliver: SliverToBoxAdapter(
              child: Text(
                'МОИ ЗАВЕРШЁННЫЕ ОБРАЗЦЫ',
                style: Theme.of(context).textTheme.appTitleMedium,
              ),
            ),
          ),
          const CompleteExampleListWidget(),
          const SliverToBoxAdapter(
            child: BottomPadding(),
          )
        ],
      ),
    );
  }
}
