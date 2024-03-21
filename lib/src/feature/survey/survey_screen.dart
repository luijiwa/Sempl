import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          appBar: AppBar(
            backgroundColor: const Color(0xffff8f8f8),
            title: Text(
              'SEMPL!',
              style: TextStyle(
                fontFamily: 'DrukCyr',
                fontSize: 32,
              ),
            ),
            centerTitle: true,
          ),
          backgroundColor: const Color(0xffff8f8f8),
          body: SafeArea(
            child: Column(children: [
              PageIndicatorWidget(currentPageIndex: _currentPageIndex),
              Expanded(
                child: PageView.builder(
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
            ]),
          )),
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
}
