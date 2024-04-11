import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/core/components/points_widget.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.onTapBack});
  final VoidCallback? onTapBack;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height.toDouble();
    final width = MediaQuery.of(context).size.width.toDouble();
    logger.w(width * 0.18);

    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/main_header.png"),
          alignment: Alignment.topCenter,
        ),
        color: Color(0xFF99BFD4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                splashRadius: 0.2,
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 18,
                  weight: 600,
                ),
                onPressed: () {
                  if (onTapBack == null) {
                    if (context.canPop()) {
                      context.pop();
                    }
                  } else {
                    onTapBack;
                  }
                },
              ),
              const Spacer(),
              const PointsWidget(),
              SizedBox(width: width * 0.02),
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
              const SizedBox(width: 22),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: SizedBox(
              height: height * 0.06,
              width: 0.2 * width,
              child: const AutoSizeText(
                'SEMPL!',
                style: TextStyle(
                  fontFamily: 'DrukCyr',
                  fontSize: 32,
                  color: Colors.white,
                ),
                maxLines: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: SizedBox(
              width: double.infinity,
              height: height * 0.1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    child: AutoSizeText(
                      'ПОПРОБУЙТЕ НОВОЕ\nСРЕДСТВО ДЛЯ ЧИСТКИ\nЗУБОВ БЕСПЛАТНО',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 27,
                        color: Colors.white,
                        height: 0.9,
                      ),
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.155,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
