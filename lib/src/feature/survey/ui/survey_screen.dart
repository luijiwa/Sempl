import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/survey/bloc/survey_bloc.dart';
import 'package:sempl/src/feature/survey/ui/widgets/steps/fifth_step_widget.dart';
import 'package:sempl/src/feature/survey/ui/widgets/steps/first_step_widget.dart';
import 'package:sempl/src/feature/survey/ui/widgets/steps/four_step_widget.dart';
import 'package:sempl/src/feature/survey/ui/widgets/page_indicator_widget.dart';
import 'package:sempl/src/feature/survey/ui/widgets/steps/second_step_widget.dart';

import 'package:sempl/src/feature/survey/ui/widgets/steps/thirth_step_widget.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  late final SurveyBloc _surveyBloc;
  late final PageController _pageViewController;
  int _currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _surveyBloc = SurveyBloc(DependenciesScope.of(context).surveyRepository);
  }

  @override
  Widget build(BuildContext context) {
    // log(bottomOffset.toString());
    return BlocProvider(
      create: (context) => _surveyBloc,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            resizeToAvoidBottomInset: _currentPageIndex == 0 ? true : false,
            appBar: AppBar(
              title: const Text('SEMPL!'),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 18,
                  weight: 500,
                ),
                onPressed: _previousPage,
              ),
            ),
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
                          onNextPage: _nextPage,
                        );
                      case 1:
                        return SecondStepWidget(
                          onNextPage: _nextPage,
                        );
                      case 2:
                        return ThirthStepWidget(
                          onNextPage: _nextPage,
                        );
                      case 3:
                        return FourStepWidget(
                          onNextPage: _nextPage,
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
      ),
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
