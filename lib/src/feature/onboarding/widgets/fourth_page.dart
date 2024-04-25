import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: const Color(0xFFFFEF7D),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Background 4.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16)
              .copyWith(bottom: height * 0.1),
          child: Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              "НАШЕ ПРИЛОЖЕНИЕ\nРАБОТАЕТ В МОСКВЕ\nИ МОСКОВСКОЙ\nОБЛАСТИ",
              style: Theme.of(context).textTheme.appTitleMedium,
              maxLines: 4,
            ),
          ),
        ),
      ),
    );
  }
}
