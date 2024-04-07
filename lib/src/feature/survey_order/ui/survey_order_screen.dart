import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/checkbox_row.dart';
import 'package:my_app/src/core/components/custom_app_bar.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/feature/survey_order/ui/widgets/first_step_suvey_order_widget.dart';
import 'package:my_app/src/feature/survey_order/ui/widgets/second_step_suvey_order_widget.dart';

class SurveyOrderScreen extends StatelessWidget {
  const SurveyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: height * 0.31,
            child: const CustomAppBar(),
          ),
          // const FirstStepSurveyOrderWidget()
          const SecondStepSurveyOrderWidget()
          // Expanded(
          //     height: MediaQuery.of(context).size.height,
          //     child: PageView(children: const []))
        ]),
      ),
    );
  }
}
