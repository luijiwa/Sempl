import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/feature/onboarding/widgets/fifth_page.dart';
import 'package:sempl/src/feature/onboarding/widgets/first_page.dart';
import 'package:sempl/src/feature/onboarding/widgets/fourth_page.dart';
import 'package:sempl/src/feature/onboarding/widgets/second_page.dart';
import 'package:sempl/src/feature/onboarding/widgets/third_page.dart';

class OnboardinScreen extends StatefulWidget {
  const OnboardinScreen({super.key});

  @override
  State<OnboardinScreen> createState() => _OnboardinScreenState();
}

class _OnboardinScreenState extends State<OnboardinScreen> {
  late final PageController _pageViewController;
  int _currentPageIndex = 0;
  @override
  void initState() {
    _pageViewController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double basisBottomOffset = MediaQuery.of(context).size.height * 0.13 -
                MediaQuery.of(context).padding.bottom >
            0
        ? MediaQuery.of(context).size.height * 0.13 -
            MediaQuery.of(context).padding.bottom
        : 0;
    final bottomOffset =
        MediaQuery.of(context).padding.bottom + basisBottomOffset;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.sizeOf(context).width;

    final listScreens = [
      const SecondPage(),
      const FirstPage(),
      const ThirdPage(),
      const FourthPage(),
      const FifthPage(),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("SEMPL!"),
      ),
      body: Stack(
        children: [
          PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageViewController,
            itemCount: listScreens.length,
            itemBuilder: (BuildContext context, int index) =>
                listScreens[index],
          ),
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: Padding(
          //     padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          //     child: Text(
          //       "SEMPL!",
          //       style: Theme.of(context).textTheme.appTitleMedium,
          //     ),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(bottom: bottomOffset, left: 22, right: 22),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0${_currentPageIndex + 1}/05',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: width * 0.153131,
                    width: width * 0.153131,
                    constraints: const BoxConstraints(
                      minHeight: 50,
                      minWidth: 50,
                      maxHeight: 70,
                      maxWidth: 70,
                    ),
                    child: FloatingActionButton(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      elevation: 0,
                      onPressed: _nextPage,
                      backgroundColor: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 24,
                          weight: 700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _nextPage() {
    if (_currentPageIndex < 4) {
      setState(() {
        _currentPageIndex++;
      });
      _pageViewController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // SettingsScope.of(context).setOnboardingViewed();
      context.goNamed(AppRoutes.login.name);
    }
  }
}
