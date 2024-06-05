import 'package:flutter/material.dart';
import 'package:sempl/src/feature/survey/ui/widgets/five_step_resize_image_widget.dart';
import 'dart:io';

import 'package:sempl/src/feature/survey/ui/widgets/picker_photo_widget.dart';

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
        child: image == null
            ? PickerPhotoWidget(
                onNextPage: widget.onNextPage,
                image: image,
              )
            : SetPhotoWidget(
                surveyContext: context,
              ));
  }
}
