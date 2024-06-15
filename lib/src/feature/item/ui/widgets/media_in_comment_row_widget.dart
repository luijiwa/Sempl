import 'package:flutter/material.dart';
import 'package:sempl/src/feature/item/ui/widgets/full_screen_review_widget.dart';

class MediaInCommentRowWidget extends StatelessWidget {
  const MediaInCommentRowWidget({
    required this.images, required this.video, super.key,
  });

  final List<String> images;
  final String? video;

  @override
  Widget build(BuildContext context) => Row(
      children: [
        Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: [
            ...images.map(
              (imageUrl) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullScreenPageView(
                          images: images,
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
                ),
            ),
            if (video != null)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FullScreenPageView(
                        images: images,
                        index: images.length,
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
    );
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