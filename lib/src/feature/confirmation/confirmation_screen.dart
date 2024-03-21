import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

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
                  height: maxHeight * 0.61,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "images/confirmation_header_background.png"),
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
                height: maxHeight * 0.675,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage("images/confirmation_body_background.png"),
                  ),
                  color: Color(0xFF99BFD4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22).copyWith(
                    top: 0.03 * maxHeight,
                  ),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 32),
                      child: AutoSizeText(
                        'Мы рады приветствовать Вас в нашем приложении. Чтобы предложить вам подходящие тесты продуктов, пройдите небольшой опрос и заполните личные данные',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        maxLines: 5,
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: maxWidth,
                        height: 0.06 * maxHeight,
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
                    SizedBox(height: 0.06 * maxHeight),
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