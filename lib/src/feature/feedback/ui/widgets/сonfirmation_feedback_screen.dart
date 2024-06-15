import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';

class ConfirmationFeedbackScreen extends StatelessWidget {
  const ConfirmationFeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final maxHeight = constraints.maxHeight.toDouble();
        final maxWidth = constraints.maxWidth.toDouble();
        final bodyHeight = maxHeight * 0.58;

        return Stack(
          // alignment: AlignmentDirectional.topStart,
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
                      image: AssetImage("assets/images/cream_header.png"),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).viewPadding.top,
                  child: Text(
                    "SEMPL!",
                    style: Theme.of(context).appBarTheme.titleTextStyle,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                height: bodyHeight,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/blue_with_noise.png"),
                    ),),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22).copyWith(
                    top: 0.03 * maxHeight,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: maxWidth * 0.078, top: maxHeight * 0.0237,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Спасибо \nза ваш отзыв!".toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .appTitleMedium
                                    .copyWith(color: Colors.white),
                                maxLines: 2,
                              ),
                              SizedBox(height: maxHeight * 0.0237),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: maxWidth * 0.06),
                                child: const AutoSizeText(
                                  'Он будет опубликован в течение 2\nдней после проверки модератором',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(height: maxWidth * 0.0237),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: maxWidth * 0.06),
                                child: const AutoSizeText(
                                  'После публикации вам начислятся \n4 балла',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
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
                                context.replaceNamed(AppRoutes.main.name);
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
                                      ),),
                                  SvgPicture.asset(
                                    colorFilter: const ColorFilter.mode(
                                        AppThemeColor.blueColor,
                                        BlendMode.srcIn,),
                                    'assets/icons/arrow_right.svg',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const BottomPadding(),
                      ],),
                ),
              ),
            ),
          ],
        );
      },),
    );
}
