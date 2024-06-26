import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ЧТО ТАКОЕ СЕМПЛ?",
                  style: Theme.of(context).textTheme.appTitleMedium,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    "Семпл - это бесплатный образец, который вы можете попробовать перед покупкой полноразмерного продукта :)",
                    style: Theme.of(context).textTheme.appBodyMedium,
                    maxLines: 3,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.27,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
