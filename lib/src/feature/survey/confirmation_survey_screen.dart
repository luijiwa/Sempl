import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';

class ConfirmationSurveyScreen extends StatelessWidget {
  const ConfirmationSurveyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "assets/images/survey_confirm_header_background.png"),
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
                        "assets/images/confirmation_body_background.png"),
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
                      padding: const EdgeInsets.only(right: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "БРАВО!",
                            style: TextStyle(
                              fontFamily: 'DrukCyr',
                              fontSize: 58,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: maxHeight * 0.01),
                          const AutoSizeText(
                            'Регистрация завершена, теперь можно начинать пробовать продукцию',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                            maxLines: 5,
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
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            foregroundColor:
                                const Color.fromARGB(255, 183, 222, 243),
                            backgroundColor: Colors.white,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText('НАЧАТЬ',
                                  style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    fontSize: 15,
                                    color: Color(0xFF86A6B8),
                                  )),
                              Icon(
                                size: 15,
                                Icons.arrow_forward,
                                color: Color(0xFF86A6B8),
                              )
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
