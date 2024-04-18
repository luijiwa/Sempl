import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/custom_back_button.dart';

import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/feature/feedback/ui/widgets/cart_item_with_step_indicator_widget.dart';
import 'package:my_app/src/feature/feedback/ui/widgets/steps/feedback_step_five.dart';
import 'package:my_app/src/feature/feedback/ui/widgets/steps/feedback_step_four.dart';
import 'package:my_app/src/feature/feedback/ui/widgets/steps/feedback_step_one.dart';
import 'package:my_app/src/feature/feedback/ui/widgets/steps/feedback_step_three.dart';
import 'package:my_app/src/feature/feedback/ui/widgets/steps/feedback_step_two.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  late final PageController _pageViewController;
  int _currentPageIndex = 0;
  @override
  void initState() {
    _pageViewController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    const standardPadding = 22.0;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(standardPadding),
          child: NextStepButton(
            onPressed: _nextPage,
            title: 'ПРОДОЛЖИТЬ ',
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppBar(
                  leading: const CustomBackButton(),
                  scrolledUnderElevation: 0,
                  title: const Text('SEMPL!'),
                  centerTitle: true,
                  titleTextStyle: Theme.of(context).textTheme.appTitleMedium,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  systemOverlayStyle: const SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                    statusBarIconBrightness: Brightness.light,
                    statusBarBrightness: Brightness.light,
                  )),
              Padding(
                padding: const EdgeInsets.all(standardPadding),
                child: AutoSizeText(
                  'НАПИСАТЬ ОБЗОР',
                  style: Theme.of(context).textTheme.appProfileTitle,
                ),
              ),
              CartItemWithStepIndicatorWidget(
                currentPageIndex: _currentPageIndex,
              ),
              ExpandablePageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageViewController,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  switch (index) {
                    case 1:
                      return const FeedbackStepTwo();
                    case 2:
                      return const FeedbackStepThree();
                    case 3:
                      return const FeedbackStepFour();
                    case 4:
                      return const FeedbackStepFive();
                    default:
                      return const FeedbackStepOne();
                  }
                },
              ),
              SizedBox(height: width * 0.32),
              const BottomPadding(),
            ],
          ),
        ),
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
    }
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
