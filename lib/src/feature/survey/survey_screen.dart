import 'package:flutter/material.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/survey/fifth_step_widget.dart';
import 'package:my_app/src/feature/survey/first_step_widget.dart';
import 'package:my_app/src/feature/survey/four_step_widget.dart';
import 'package:my_app/src/feature/survey/page_indicator_widget.dart';
import 'package:my_app/src/feature/survey/second_step_widget.dart';

import 'package:my_app/src/feature/survey/thirth_step_widget.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  late final PageController _pageViewController;
  int _currentPageIndex = 0;
  @override
  void initState() {
    _pageViewController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    logger.w(height * 0.0639);

    // log(bottomOffset.toString());
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: _currentPageIndex == 0 ? true : false,
          appBar: AppBar(
            backgroundColor: const Color(0xffff8f8f8),
            title: const Text(
              'SEMPL!',
              style: TextStyle(
                fontFamily: 'DrukCyr',
                fontSize: 32,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                size: 18,
                weight: 500,
              ),
              onPressed: () {
                _previousPage();
              },
            ),
          ),
          backgroundColor: const Color(0xffff8f8f8),
          body: Column(children: [
            PageIndicatorWidget(currentPageIndex: _currentPageIndex),
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageViewController,
                itemBuilder: (_, index) {
                  switch (index) {
                    case 0:
                      return FirstStepWidget(
                        onNextPage: () => _nextPage(),
                      );
                    case 1:
                      return SecondStepWidget(
                        onNextPage: () => _nextPage(),
                      );
                    case 2:
                      return ThirthStepWidget(
                        onNextPage: () => _nextPage(),
                      );
                    case 3:
                      return FourStepWidget(
                        onNextPage: () => _nextPage(),
                      );
                    case 4:
                      return FifthStepWidget(onNextPage: () {
                        setState(() {
                          _currentPageIndex = 0;
                        });
                        _pageViewController.jumpToPage(0);
                      });
                    default:
                      return Container();
                  }
                },
                itemCount: 5,
              ),
            ),
          ])),
    );
  }

  void _nextPage() {
    setState(() {
      _currentPageIndex++;
    });
    _pageViewController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void _previousPage() {
    if (_currentPageIndex > 0) {
      setState(() {
        _currentPageIndex--;
      });
      _pageViewController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }
}
