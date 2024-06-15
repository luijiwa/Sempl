import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/star_rating_widget.dart';

class ItemInListWithReviewWidget extends StatefulWidget {
  const ItemInListWithReviewWidget({super.key, this.applyColorFilter = false});
  final bool applyColorFilter;

  @override
  State<ItemInListWithReviewWidget> createState() =>
      _ItemInListWithReviewWidgetState();
}

class _ItemInListWithReviewWidgetState extends State<ItemInListWithReviewWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animationTween;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 30),
      vsync: this,
    );
    _animationTween =
        Tween(begin: 0.0, end: 10.0).animate(_animationController);
    _animationController.addListener(() {
      setState(() {});
    });
  }

  final _showReview = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final offset = width * 0.06254661017;
    return Material(
      elevation: _animationTween.value,
      borderRadius: BorderRadius.circular(20),
      shadowColor: AppThemeColor.black.withOpacity(0.2),
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTap: () =>
            context.pushNamed(AppRoutes.itemScreen.name, pathParameters: {
          'id': '1',
        },),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: offset),
              Padding(
                padding: EdgeInsets.only(bottom: width * 0.01),
                child: Image.asset("assets/images/item_image.png"),
              ),
              Text(
                "Vinopure".toUpperCase(),
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05)
                    .copyWith(top: width * 0.001, bottom: 11),
                child: AutoSizeText(
                    "Sérum salicylique Anti-imperfections 30ml - Caudalie"
                        .toUpperCase(),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: const TextStyle(
                      fontSize: 13,
                      height: 1,
                    ),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.3),
                child: const AutoSizeText(
                  "29/08/2023",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppThemeColor.grisTwo,
                  ),
                  maxLines: 1,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: width * 0.0255, bottom: width * 0.05),
                child: StarRatingWidget(
                  size: width * 0.038175,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    _showReview.value = !_showReview.value;
                  });
                },
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                  vertical: width * 0.04,
                  horizontal: width * 0.05,
                ),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("see review".toUpperCase(),
                        style: Theme.of(context).textTheme.appBodyMedium,),
                    AnimatedRotation(
                      duration: const Duration(milliseconds: 200),
                      turns: _showReview.value ? 0.5 : 0,
                      child: const Icon(
                        Icons.keyboard_arrow_down,
                        color: AppThemeColor.black,
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedSize(
                alignment: Alignment.topCenter,
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
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _animationController.reverse();
  }
}

class ReviewExpandedWidget extends StatelessWidget {
  const ReviewExpandedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
          top: width * 0.05629, bottom: width * 0.05629, right: width * 0.03,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StarRatingWidget(
            rating: 3,
            size: width * 0.038175,
          ),
          SizedBox(height: width * 0.02545),
          Text(
            '''
Запах сыворотки неприятный. Для меня это просто «ух». Есть намек на что-то алкогольное, а также смесь трав. Возможно, такое неприятное сочетание вызвано эфирными маслами, которые я уже указала в составе.
    
При нанесении сыворотки стараюсь сильно не дышать 🤪 жаль, что запах еще какое-то время задерживается на коже.
    
Сыворотка имеет гелевую текстуру. Довольно густой, не особенно жидкий. Он легко распределяется по коже и без особых усилий.''',
            style: Theme.of(context).textTheme.appBodyMedium,
          ),
          SizedBox(height: width * 0.068715),
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) => const PlusMinusDescriptionWidget(
                icon: Icons.add_rounded,
                text: 'Эффекта сужения пор в течение дня не получите',
              ),
          ),
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) => const PlusMinusDescriptionWidget(
                icon: Icons.remove_outlined,
                text:
                    'После ночного нанесения и умывания эффект не так выражен, как мне кажется',
              ),
          ),
        ],
      ),
    );
  }
}

class PlusMinusDescriptionWidget extends StatelessWidget {
  const PlusMinusDescriptionWidget({
    required this.icon, required this.text, super.key,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Icon(
          icon,
          color: AppThemeColor.blueColor,
          size: width * 0.04,
        ),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            text,
            style: Theme.of(context).textTheme.appBodyMedium,
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
