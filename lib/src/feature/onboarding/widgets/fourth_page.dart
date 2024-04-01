import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

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
              .copyWith(bottom: height * 0.09),
          child: Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              "НАШЕ ПРИЛОЖЕНИЕ\nРАБОТАЕТ В МОСКВЕ\nИ МОСКОВСКОЙ\nОБЛАСТИ",
              style: Theme.of(context).textTheme.bodyLarge,
              maxLines: 4,
            ),
          ),
        ),
      ),
    );
  }
}
