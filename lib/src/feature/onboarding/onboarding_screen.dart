import 'package:flutter/material.dart';
import 'package:my_app/src/feature/onboarding/fifth_page.dart';
import 'package:my_app/src/feature/onboarding/first_page.dart';
import 'package:my_app/src/feature/onboarding/fourth_page.dart';
import 'package:my_app/src/feature/onboarding/second_page.dart';
import 'package:my_app/src/feature/onboarding/third_page.dart';

class OnboardinScreen extends StatelessWidget {
  const OnboardinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double basisBottomOffset =
        MediaQuery.of(context).size.height * 0.058 -
                    MediaQuery.of(context).padding.bottom >
                0
            ? MediaQuery.of(context).size.height * 0.058 -
                MediaQuery.of(context).padding.bottom
            : 0;
    final bottomOffset =
        MediaQuery.of(context).padding.bottom + basisBottomOffset;

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              switch (index) {
                case 1:
                  return const SecondPage();
                case 2:
                  return const ThirdPage();
                case 3:
                  return const FourthPage();
                case 4:
                  return const FifthPage();

                default:
                  return const FirstPage();
              }
            },
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: const Text(
                "SEMPL!",
                style: TextStyle(
                  fontFamily: 'DrukCyr',
                  fontSize: 32,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: bottomOffset, left: 22, right: 22),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '01/05',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SourceSansProBold',
                    ),
                  ),
                  FloatingActionButton(onPressed: () {})
                  // Container(
                  //   height: 60,
                  //   width: 60,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(
                  //       15,
                  //     ),
                  //   ),
                  //   child: IconButton(
                  //     onPressed: () {},
                  //     icon: const Icon(Icons.arrow_forward_ios_rounded),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
