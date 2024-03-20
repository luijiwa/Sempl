import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:my_app/src/feature/survey/thirth_step_widget.dart';

class SurveyScreen extends StatelessWidget {
  const SurveyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double bottomOffset = 0.001 * height;
    // log(bottomOffset.toString());
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SEMPL!',
            style: TextStyle(
              fontFamily: 'DrukCyr',
              fontSize: 32,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: SafeArea(
              top: false,
              bottom: true,
              left: false,
              right: false,
              maintainBottomViewPadding: true,
              child: Column(
                children: [
                  // const FirstStepWidget(),
                  const ThirthStepWidget(),
                  const NextStepButton(),

                  SizedBox(height: bottomOffset),
                ],
              ),
            ),
          ),
        ));
  }
}

class NextStepButton extends StatelessWidget {
  const NextStepButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 0.058 * height,
      child: ElevatedButton(
        onPressed: () {
          // if (_currentPageIndex == 1) {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const ConfirmationScreen(),
          //     ),
          //   );
          // } else {
          //   setState(() {
          //     _currentPageIndex++;
          //   });
          //   _pageViewController.nextPage(
          //     duration: const Duration(milliseconds: 300),
          //     curve: Curves.easeIn,
          //   );
          // }
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF99BFD4),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              'ПРОДОЛЖИТЬ',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 15,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
