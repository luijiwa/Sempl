import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/feature/feedback/bloc/feedback_bloc.dart';
import 'package:sempl/src/feature/feedback/ui/widgets/cart_item_with_step_indicator_widget.dart';
import 'package:sempl/src/feature/feedback/ui/widgets/steps/feedback_step_five.dart';
import 'package:sempl/src/feature/feedback/ui/widgets/steps/feedback_step_four.dart';
import 'package:sempl/src/feature/feedback/ui/widgets/steps/feedback_step_one.dart';
import 'package:sempl/src/feature/feedback/ui/widgets/steps/feedback_step_three.dart';
import 'package:sempl/src/feature/feedback/ui/widgets/steps/feedback_step_two.dart';

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
    final double bottomOffset =
        (height * 0.058 - MediaQuery.of(context).padding.bottom) +
            MediaQuery.of(context).padding.bottom;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: BlocProvider(
        create: (context) => FeedbackBloc(),
        child: Scaffold(
          resizeToAvoidBottomInset:
              _currentPageIndex == 1 || _currentPageIndex == 2,
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppBar(
                  leading: CustomBackButton(
                    onPressed: _currentPageIndex == 0 ? null : _previousPage,
                  ),
                  title: const Text('SEMPL!'),
                ),
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
                SizedBox(height: width * 0.16797),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: standardPadding),
                  child: NextStepButton(
                    onPressed: _nextPage,
                    title: 'ПРОДОЛЖИТЬ ',
                  ),
                ),
                const BottomPadding(),
              ],
            ),
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
    } else {
      context.goNamed(AppRoutes.feedbackConfirmation.name);
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
