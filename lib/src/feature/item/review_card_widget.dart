import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/star_rating_widget.dart';
import 'package:my_app/src/feature/item/full_screen_review_widget.dart';
import 'package:my_app/theme.dart';

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
    final String video =
        "https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4";

    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          border: Border.all(width: 1, color: AppThemeColor.blueColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: width * 0.1,
                  height: width * 0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppThemeColor.blueColor,
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
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'SourceSansProBold',
                    color: AppThemeColor.blueColor,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StarRatingWidget(),
                Text(
                  "29/08/2023",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'SourceSansPro',
                      color: AppThemeColor.grisTwo),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            const AutoSizeText(
              "Средство просто супер! Шикарный аромат, хорошо отстирывает, белье не сушит. Красивая упаковка) Однозначно будем брать еще! Спасибо! Было бы классно если бы появились еще саше, кондиционеры для белья, аромадиффузоры. Ароматы просто 🔥🔥🔥 ",
              style: TextStyle(fontSize: 15, fontFamily: 'SourceSansPro'),
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
                          fontFamily: 'SourceSansPro',
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
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
