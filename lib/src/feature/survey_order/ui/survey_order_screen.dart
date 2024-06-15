import 'package:flutter/material.dart';
import 'package:sempl/src/feature/survey_order/ui/widgets/first_step_suvey_order_widget.dart';
import 'package:sempl/src/feature/survey_order/ui/widgets/second_step_suvey_order_widget.dart';

class SurveyOrderScreen extends StatefulWidget {
  const SurveyOrderScreen({super.key});

  @override
  State<SurveyOrderScreen> createState() => _SurveyOrderScreenState();
}

class _SurveyOrderScreenState extends State<SurveyOrderScreen> {
  late final PageController _pageViewController;
  int _currentPageIndex = 0;
  @override
  void initState() {
    _pageViewController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageViewController,
        itemCount: 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return FirstStepSurveyOrderWidget(
              onNextPage: _nextPage,
            );
          } else {
            return SecondStepSurveyOrderWidget(onPreviousPage: _previousPage);
          }
        },
      ),
    );

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
