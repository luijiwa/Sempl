import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEF7D),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Background 5.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.33),
              Align(
                alignment: Alignment.centerLeft,
                child: AutoSizeText(
                  "АНКЕТА",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.011),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.2),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    "Наше приложение включает\nфункцию опроса, которая позволяет\nнам лучше понять ваши предпочтения\nи интересы пользователей",
                    style: Theme.of(context).textTheme.bodyMedium,
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
