import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';

class ConfirmationOrderTypeOneScreen extends StatelessWidget {
  const ConfirmationOrderTypeOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final maxHeight = constraints.maxHeight.toDouble();
        final maxWidth = constraints.maxWidth.toDouble();
        final bodyHeight = maxHeight * 0.58;

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
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/face_header.png"),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).viewPadding.top,
                  child: Text("SEMPL!",
                      style: Theme.of(context)
                          .appBarTheme
                          .titleTextStyle!
                          .copyWith(color: Colors.white)),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: bodyHeight,
                    decoration: const BoxDecoration(
                      color: Color(0xFF99BFD4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/green_triangle.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: maxHeight * 0.02,
                    child: Image.asset(
                      'assets/images/orange_star.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 22,
                    top: maxHeight * 0.28,
                    child: Image.asset(
                      'assets/images/yellow_star.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: bodyHeight,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 22).copyWith(
                        top: 0.03 * maxHeight,
                      ),
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: maxWidth * 0.078, top: maxHeight * 0.0237),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Спасибо за ваши ответы!".toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .appTitleMedium
                                    .copyWith(color: Colors.white),
                                maxLines: 2,
                              ),
                              SizedBox(height: maxHeight * 0.0237),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: maxWidth * 0.078),
                                child: const AutoSizeText(
                                  'Товар будет отправлен в ближайшее время. Сроки и статус доставки можно отслеживать в личном кабинете',
                                  style: TextStyle(
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
                                context.goNamed(AppRoutes
                                    .confirmationOrderTypeTwoScreen.name);
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
                                        fontSize: maxWidth > 320 ? 15 : 12,
                                        color: const Color(0xFF86A6B8),
                                      )),
                                  SvgPicture.asset(
                                    colorFilter: const ColorFilter.mode(
                                        AppThemeColor.blueColor,
                                        BlendMode.srcIn),
                                    'assets/icons/arrow_right.svg',
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
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
