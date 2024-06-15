import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/theme/theme.dart';

class FeedbackStepFour extends StatelessWidget {
  const FeedbackStepFour({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              top: width * 0.034,
              left: width * 0.04581,
              bottom: width * 0.05599,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              border: Border.all(
                  color: AppThemeColor.gris.withOpacity(0.1),),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.01),
                Row(
                  //0,038175 15     0,04581 18       0,05599 22      0,104345 41
                  children: [
                    AutoSizeText(
                      'Добавить фото в отзыв',
                      style: Theme.of(context).textTheme.appBodyMedium,
                    ),
                    SizedBox(width: width * 0.02545),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.02045,
                          vertical: width * 0.01018,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: AppThemeColor.blueColor,
                      ),
                      child: Text(
                        '1/3',
                        style: Theme.of(context)
                            .textTheme
                            .appBodyMedium
                            .copyWith(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Cabin',),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: width * 0.052),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    SizedBox(
                      height: width * 0.195965,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7.0),
                        child: SvgPicture.asset(
                            'assets/icons/pick_photo_or_video.svg',),
                      ),
                    ),
                    const PhotoPreviewWidget(),
                    const VideoPreviewWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PhotoPreviewWidget extends StatelessWidget {
  const PhotoPreviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return SizedBox(
      width: width * 0.195965,
      height: width * 0.195965,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7.0),
        child: Image.asset(
          'assets/images/review_photo1.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class VideoPreviewWidget extends StatelessWidget {
  const VideoPreviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: AppThemeColor.black.withOpacity(0.2),
          ),
          width: width * 0.195965,
          height: width * 0.195965,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/review_photo1.png',
              ),
            ),
          ),
        ),
        Positioned(
          width: width * 0.195965,
          height: width * 0.195965,
          child: const Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
