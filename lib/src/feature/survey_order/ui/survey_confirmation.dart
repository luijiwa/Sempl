import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/router/app_routes.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/theme.dart';

class ConfirmationOrderSurveyTypeOneScreen extends StatelessWidget {
  const ConfirmationOrderSurveyTypeOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final maxHeight = constraints.maxHeight.toDouble();
        final maxWidth = constraints.maxWidth.toDouble();
        logger.w(maxWidth * 0.078);
        return Stack(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: maxHeight * 0.45,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/face_header.png"),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).viewPadding.top,
                  child: const Text(
                    "SEMPL!",
                    style: TextStyle(
                      fontFamily: 'DrukCyr',
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                height: maxHeight * 0.6,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/survey_suggestion_background.png"),
                  ),
                  color: Color(0xFF99BFD4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22).copyWith(
                    top: 0.03 * maxHeight,
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(right: maxWidth * 0.078),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Спасибо за ваши ответы!".toUpperCase(),
                            style: const TextStyle(
                                fontFamily: 'DrukCyr',
                                fontSize: 50,
                                color: Colors.white,
                                height: 1),
                            maxLines: 2,
                          ),
                          SizedBox(height: maxHeight * 0.0237),
                          Padding(
                            padding: EdgeInsets.only(right: maxWidth * 0.078),
                            child: const AutoSizeText(
                              'Товар будет отправлен в ближайшее время. Сроки и статус доставки можно отслеживать в личном кабинете',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 15,
                                color: Colors.white,
                              ),
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: maxWidth,
                        height: 0.055 * maxHeight,
                        child: ElevatedButton(
                          onPressed: () {
                            context.goNamed(AppRoutes.main.name);
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: const StadiumBorder(),
                            foregroundColor:
                                const Color.fromARGB(255, 183, 222, 243),
                            backgroundColor: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText('НА ГЛАВНЫЙ ЭКРАН ',
                                  style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    fontSize: maxWidth > 320 ? 15 : 12,
                                    color: const Color(0xFF86A6B8),
                                  )),
                              SvgPicture.asset(
                                colorFilter: const ColorFilter.mode(
                                    AppThemeColor.blueColor, BlendMode.srcIn),
                                'assets/images/arrow_right.svg',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const BottomPadding(),
                  ]),
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
