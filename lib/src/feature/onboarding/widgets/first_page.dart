import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/src/core/utils/logger.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    logger.w(height * 0.403);
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
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.18,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: AutoSizeText(
                  "КАК ЭТО РАБОТАЕТ?",
                  style: Theme.of(context).textTheme.bodyLarge,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.1),
                  child: AutoSizeText(
                    "Посмотрите доступные образцы продуктов,\nзаполните форму, получите заказ, оставьте отзыв и получите накопительные баллы",
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 3,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: height * 0.38,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: height * 0.017),
                          Image.asset(
                            'assets/images/serum.png',
                          ),
                          const SizedBox(height: 5),
                          SvgPicture.asset('assets/images/Frame 3.svg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Positioned(
                      bottom: height * 0.21,
                      left: width * 0.01,
                      child: SizedBox(
                        child: SvgPicture.asset('assets/images/Frame 2.svg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
