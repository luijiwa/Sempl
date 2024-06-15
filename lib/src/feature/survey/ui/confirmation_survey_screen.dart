import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';

class ConfirmationSurveyScreen extends StatelessWidget {
  const ConfirmationSurveyScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final maxHeight = constraints.maxHeight.toDouble();
        final maxWidth = constraints.maxWidth.toDouble();
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
                      image: AssetImage(
                          "assets/images/survey_confirm_header_background.png",),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).viewPadding.top,
                  child: Text("SEMPL!",
                      style: Theme.of(context)
                          .appBarTheme
                          .titleTextStyle!
                          .copyWith(color: Colors.white),),
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
                        "assets/images/survey_suggestion_background.png",),
                  ),
                  color: Color(0xFF99BFD4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22).copyWith(
                    top: maxWidth * 0.1018,
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(right: maxWidth * 0.078),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("БРАВО!",
                              style: Theme.of(context)
                                  .textTheme
                                  .appTitleMedium
                                  .copyWith(
                                    color: Colors.white,
                                  ),),
                          SizedBox(height: maxWidth * 0.0509),
                          const AutoSizeText(
                            'Регистрация завершена, теперь можно начинать пробовать продукцию',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                            maxLines: 2,
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
                              AutoSizeText('НАЧАТЬ ',
                                  style: TextStyle(
                                    fontSize: maxWidth > 320 ? 15 : 12,
                                    color: const Color(0xFF86A6B8),
                                  ),),
                              SvgPicture.asset(
                                colorFilter: const ColorFilter.mode(
                                    AppThemeColor.blueColor, BlendMode.srcIn,),
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
