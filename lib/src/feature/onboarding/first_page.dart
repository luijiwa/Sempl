import 'package:flutter/material.dart';

import 'package:my_app/src/feature/onboarding/second_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFFEF7D),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Background 1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.2,
              ),
              const SizedBox(
                width: 379,
                child: Text(
                  "КАК ЭТО РАБОТАЕТ?",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'DrukCyr',
                    height: 1,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                width: 400,
                child: Text(
                  "Посмотрите доступные образцы продуктов,             заполните форму, получите заказ, оставьте отзыв и получите накопительные баллы",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 330,
                height: 370,
                child: Stack(
                  children: [
                    Container(
                      width: 343,
                      height: 313,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/serum.png',
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SvgPicture.asset('assets/images/Frame 3.svg'),
                          const SizedBox(
                            height: 25,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Positioned(
                      top: 200,
                      child: SizedBox(
                        width: 144,
                        height: 200,
                        child: SvgPicture.asset('assets/images/Frame 2.svg'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
