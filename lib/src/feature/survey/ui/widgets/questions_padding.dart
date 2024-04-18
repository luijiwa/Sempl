import 'package:flutter/material.dart';

class QuestionsPadding extends StatelessWidget {
  const QuestionsPadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final standartPadding = height * 0.0345;
    return SizedBox(height: standartPadding);
  }
}
