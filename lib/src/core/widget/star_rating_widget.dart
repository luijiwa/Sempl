import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/src/core/theme/theme.dart';

class StarRatingWidget extends StatelessWidget {
  const StarRatingWidget({
    super.key,
    this.size = 20,
    this.rating = 5,
  });
  final double size;
  final int rating;
  @override
  Widget build(BuildContext context) => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < rating; i++) ...[
          SvgPicture.asset(
            width: size,
            'assets/icons/star_filled.svg',
            colorFilter: const ColorFilter.mode(
                AppThemeColor.blueColor, BlendMode.srcIn,),
          ),
          SizedBox(width: size / 10),
        ],
        for (int i = 0; i < 5 - rating; i++) ...[
          SvgPicture.asset(
            width: size,
            'assets/icons/star_outline.svg',
            colorFilter: const ColorFilter.mode(
                AppThemeColor.blueColor, BlendMode.srcIn,),
          ),
          SizedBox(width: size / 7),
        ],
      ],
    );
}

class StarRatingWithGestureWidget extends StatefulWidget {
  const StarRatingWithGestureWidget({
    super.key,
    this.size = 20,
    this.rating = 0,
  });
  final double size;
  final int rating;

  @override
  State<StarRatingWithGestureWidget> createState() =>
      _StarRatingWithGestureWidgetState();
}

class _StarRatingWithGestureWidgetState
    extends State<StarRatingWithGestureWidget> {
  int _rating = 0;

  @override
  void initState() {
    super.initState();
    _rating = widget.rating;
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {
        final pointerLocalPosition = context
                .findRenderObject()!
                .getTransformTo(null)
                .getTranslation()
                .x /
            widget.size;
        final tappedRating = (pointerLocalPosition / 1.25).round();

        setState(() {
          _rating = tappedRating;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < 5; i++) ...[
            Icon(
              i < _rating ? Icons.star_rounded : Icons.star_outline_rounded,
              color: i < _rating ? AppThemeColor.blueColor : AppThemeColor.gris,
              size: widget.size,
            ),
            SizedBox(width: widget.size / 10),
          ],
        ],
      ),
    );
}
