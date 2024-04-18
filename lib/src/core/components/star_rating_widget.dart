import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

class StarRatingWidget extends StatelessWidget {
  const StarRatingWidget({
    super.key,
    this.size = 20,
  });
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < 5; i++)
          Icon(
            Icons.star_rounded,
            color: AppThemeColor.blueColor,
            size: size,
          ),
      ],
    );
  }
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
  Widget build(BuildContext context) {
    return GestureDetector(
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
}
