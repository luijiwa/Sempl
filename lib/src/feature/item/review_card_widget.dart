import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/widget/app_bar_profile_icon_button_widget.dart';
import 'package:my_app/src/core/widget/star_rating_widget.dart';
import 'package:my_app/src/feature/item/full_screen_review_widget.dart';
import 'package:my_app/src/core/theme/theme.dart';

class ReviewCardWidget extends StatelessWidget {
  const ReviewCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final List<String> images = [
      "assets/images/review_photo1.png",
      "assets/images/review_photo2.png",
    ];
    const String video =
        "https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4";

    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22),
        padding: const EdgeInsets.symmetric(horizontal: 15)
            .copyWith(top: 15, bottom: 30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                const AppBarProfileIconButtonWidget(),
                SizedBox(width: width * 0.02),
                const AutoSizeText(
                  "@WOLFLIKEMEEE",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: AppThemeColor.blueColor,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StarRatingWidget(size: width * 0.038175),
                const Text(
                  "29/08/2023",
                  style: TextStyle(fontSize: 12, color: AppThemeColor.grisTwo),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            const AutoSizeText(
              "Средство просто супер! Шикарный аромат, хорошо отстирывает, белье не сушит. Красивая упаковка) Однозначно будем брать еще! Спасибо! Было бы классно если бы появились еще саше, кондиционеры для белья, аромадиффузоры. Ароматы просто 🔥🔥🔥 ",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: height * 0.02),
            Column(
              children: [
                for (int i = 0; i < 2; i++)
                  Row(
                    children: [
                      const Icon(
                        Icons.add,
                        size: 12,
                        color: AppThemeColor.blueColor,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      const Text(
                        "Хорошо отстирывает одежду",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    ...images.map((imageUrl) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FullScreenPageView(
                                images: images,
                                videoUrl: video,
                                index: images.indexOf(imageUrl),
                              ),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 77,
                          height: 77,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7.0),
                            child: Image.asset(
                              imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    }),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FullScreenPageView(
                              images: images,
                              videoUrl: video,
                              index: 2,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 77,
                        height: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              images[0],
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
            SizedBox(height: width * 0.051),
            SizedBox(
              width: double.maxFinite,
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: width * 0.02545,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.038175,
                        vertical: width * 0.02545),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppThemeColor.grey,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          width: width * 0.043265,
                          colorFilter: const ColorFilter.mode(
                              AppThemeColor.gris, BlendMode.srcIn),
                          'assets/icons/like.svg',
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "2",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.038175,
                        vertical: width * 0.02545),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppThemeColor.grey,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.flip(
                          flipY: true,
                          child: SvgPicture.asset(
                            width: width * 0.043265,
                            colorFilter: const ColorFilter.mode(
                                AppThemeColor.blueColor, BlendMode.srcIn),
                            'assets/icons/like.svg',
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "0",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
  // Transform.scale(
  //                         scale: -1,
  //                         child: SvgPicture.asset(
  //                           width: width * 0.043265,
  //                           colorFilter: const ColorFilter.mode(
  //                               AppThemeColor.gris, BlendMode.srcIn),
  //                           'assets/icons/like.svg',
  //                         ),
  //                       ),