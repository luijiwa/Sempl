import 'package:flutter/cupertino.dart';

class BottomPadding extends StatelessWidget {
  const BottomPadding({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final double bottomOffset =
        height * 0.058 - MediaQuery.of(context).padding.bottom;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: bottomOffset),
        SizedBox(height: MediaQuery.of(context).padding.bottom),
      ],
    );
  }
}
