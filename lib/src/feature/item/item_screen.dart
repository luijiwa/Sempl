import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/custom_sliver_app_bar.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/theme.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;
    return Scaffold(
        backgroundColor: AppThemeColor.grey,
        body: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding: const EdgeInsets.symmetric(horizontal: 15)
                    .copyWith(top: 25, bottom: 35),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(40.0)),
                  border: Border.all(width: 0.5, color: AppThemeColor.gris),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                for (int i = 0; i < 5; i++)
                                  const Icon(
                                    Icons.star_rounded,
                                    color: AppThemeColor.blueColor,
                                    size: 20.0,
                                  ),
                              ],
                            ),
                            const AutoSizeText('5,0 по 89 отзывам')
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_outline_rounded)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.ios_share_rounded)),
                      ],
                    ),
                    Image.asset("assets/images/item_image.png"),
                    const Text("Vinopure"),
                    const AutoSizeText(
                      "Гель-концентрат для стирки Универсальный Французская орхидея, 0,9 л",
                      textAlign: TextAlign.center,
                    ),
                    NextStepButton(title: 'КУПИТЬ ЗА БАЛЛЫ', onPressed: () {})
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 22)
                  .copyWith(top: 27, bottom: 15),
              sliver: SliverToBoxAdapter(
                  child: Row(
                children: [
                  const AutoSizeText('Комментарии (387)'),
                  const Spacer(),
                  const Wrap(
                    children: [
                      AutoSizeText('Новые'),
                      Icon(Icons.ac_unit_outlined),
                    ],
                  ),
                  SizedBox(width: width * 0.02),
                  const Wrap(
                    children: [
                      AutoSizeText('Рейтинг'),
                      Icon(Icons.ac_unit_outlined),
                    ],
                  )
                ],
              )),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 22),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  border: Border.all(width: 0.5, color: AppThemeColor.gris),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: width * 0.1,
                          height: width * 0.1,
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
                        SizedBox(width: width * 0.02),
                        AutoSizeText(
                          "@wolflikemeee".toUpperCase(),
                          maxLines: 1,
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text("29/08/2023"),
                      ],
                    ),
                    const AutoSizeText(
                        "Средство просто супер! Шикарный аромат, хорошо отстирывает, белье не сушит. Красивая упаковка) Однозначно будем брать еще! Спасибо! Было бы классно если бы появились еще саше, кондиционеры для белья, аромадиффузоры. Ароматы просто 🔥🔥🔥 "),
                    SizedBox(height: height * 0.005),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              const Icon(
                                Icons.add,
                                color: AppThemeColor.blueColor,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              const Text("Запах"),
                            ],
                          );
                        }),
                    SizedBox(height: height * 0.005),

                    ///Add clicable mini preview image and video
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: height * 0.2,
                        width: height * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1656408308602-05835d990fb1?q=80&w=2728&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
