import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFCFF3E9),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Background 3.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: width * 0.35),
              Padding(
                padding: EdgeInsets.only(right: width * 0.04),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    "ВКЛЮЧИТЕ\nУВЕДОМЛЕНИЯ, ЧТОБЫ\nБЫТЬ В КУРСЕ ВСЕХ\nНОВЫХ ПРОДУКТОВ",
                    style: Theme.of(context).textTheme.appTitleMedium,
                    maxLines: 4,
                  ),
                ),
              ),
              SizedBox(height: width * 0.08),
              Padding(
                padding: EdgeInsets.only(left: width * 0.073),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: AutoSizeText(
                    "Вы будете получать push-\nуведомления с информацией о новых\nдоступных товарах, акциях, скидках\nи других событиях",
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.appBodyMedium,
                    maxLines: 4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
