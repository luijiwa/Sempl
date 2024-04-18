import 'package:flutter/material.dart';
import 'dart:io';

import 'package:my_app/src/feature/survey/ui/widgets/picker_photo_widget.dart';

class FifthStepWidget extends StatefulWidget {
  const FifthStepWidget({super.key, required this.onNextPage});
  final VoidCallback onNextPage;

  @override
  State<FifthStepWidget> createState() => _FifthStepWidgetState();
}

class _FifthStepWidgetState extends State<FifthStepWidget> {
  File? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: PickerPhotoWidget(onNextPage: widget.onNextPage, image: image),
    );
  }
}
