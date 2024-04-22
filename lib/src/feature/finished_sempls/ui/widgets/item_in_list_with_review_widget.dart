
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/core/components/star_rating_widget.dart';
import 'package:my_app/src/core/router/app_routes.dart';
import 'package:my_app/src/core/theme/theme.dart';

class ItemInListWithReviewWidget extends StatefulWidget {
  const ItemInListWithReviewWidget({super.key, this.applyColorFilter = false});
  final bool applyColorFilter;

  @override
  State<ItemInListWithReviewWidget> createState() =>
      _ItemInListWithReviewWidgetState();
}

class _ItemInListWithReviewWidgetState
    extends State<ItemInListWithReviewWidget> {
  final _showReview = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final offset = height * 0.029;
    return InkWell(
      onTap: () {
        context.pushNamed(AppRoutes.itemScreen.name);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: offset),
            if (widget.applyColorFilter)
              ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  AppThemeColor.grey,
                  BlendMode.multiply,
                ),
                child: Image.asset("assets/images/item_image.png"),
              )
            else
              Image.asset("assets/images/item_image.png"),
            Text(
              "Vinopure".toUpperCase(),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05)
                  .copyWith(top: 4, bottom: 11),
              child: AutoSizeText(
                  "Sérum salicylique Anti-imperfections 30ml - Caudalie"
                      .toUpperCase(),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1,
                  )),
            ),
            Text(
              "5.0 из 89 отзывов".toUpperCase(),
              style: const TextStyle(
                fontSize: 8,
              ),
            ),
            const SizedBox(height: 11),
            StarRatingWidget(
              size: width * 0.038175,
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  _showReview.value = !_showReview.value;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("see review".toUpperCase()),
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 200),
                    turns: _showReview.value ? 0.5 : 0,
                    child: const Icon(Icons.keyboard_arrow_down),
                  ),
                ],
              ),
            ),
            AnimatedSize(
              curve: Curves.easeInOutCirc,
              duration: const Duration(milliseconds: 200),
              child: _showReview.value
                  ? const ReviewExpandedWidget()
                  : const SizedBox.shrink(),
            ),
            SizedBox(height: offset),
          ],
        ),
      ),
    );
  }
}

class ReviewExpandedWidget extends StatelessWidget {
  const ReviewExpandedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StarRatingWidget(
          rating: 3,
          size: width * 0.038175,
        ),
        const Text(
          '''Запах сыворотки неприятный. Для меня это просто «ух». Есть намек на что-то алкогольное, а также смесь трав. Возможно, такое неприятное сочетание вызвано эфирными маслами, которые я уже указала в составе.

При нанесении сыворотки стараюсь сильно не дышать 🤪 жаль, что запах еще какое-то время задерживается на коже.

Сыворотка имеет гелевую текстуру. Довольно густой, не особенно жидкий. Он легко распределяется по коже и без особых усилий.''',
        ),
        ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) {
            return const PlusMinusDescriptionWidget(
              icon: Icons.add_rounded,
              text: 'Эффекта сужения пор в течение дня не получите',
            );
          },
        ),
        ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) {
            return const PlusMinusDescriptionWidget(
              icon: Icons.remove_outlined,
              text:
                  'После ночного нанесения и умывания эффект не так выражен, как мне кажется',
            );
          },
        )
      ],
    );
  }
}

class PlusMinusDescriptionWidget extends StatelessWidget {
  const PlusMinusDescriptionWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: AppThemeColor.blueColor,
          size: width * 0.04,
        ),
        const SizedBox(width: 10),
        Flexible(child: Text(text)),
        const SizedBox(width: 10),
      ],
    );
  }
}
