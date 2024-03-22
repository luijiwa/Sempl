import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/survey/five_step_resize_image_widget.dart';
import 'package:my_app/theme.dart';
import 'dart:io';
import 'dart:async';

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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double bottomOffset =
        height * 0.059 - MediaQuery.of(context).padding.bottom;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: PickerPhotoWidget(onNextPage: widget.onNextPage, image: image),
    );
  }
}

class PickerPhotoWidget extends StatefulWidget {
  PickerPhotoWidget({super.key, required this.onNextPage, required this.image});
  final VoidCallback onNextPage;
  File? image;

  @override
  State<PickerPhotoWidget> createState() => _PickerPhotoWidgetState();
}

class _PickerPhotoWidgetState extends State<PickerPhotoWidget> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double bottomOffset =
        height * 0.059 - MediaQuery.of(context).padding.bottom;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: height * 0.035),
        const AutoSizeText(
          'И ПОСЛЕДНЕЕ',
          style: TextStyle(fontSize: 30, fontFamily: 'DrukCyr'),
          maxLines: 1,
        ),
        SizedBox(height: height * 0.01),
        const AutoSizeText('Если хотите, добавьте фотографию профиля'),
        SizedBox(height: height * 0.098),
        Center(
            child: InkWell(
          onTap: () async {
            final ImagePicker picker = ImagePicker();

            final imagePick =
                await picker.pickImage(source: ImageSource.gallery);
            setState(() {
              if (imagePick != null) {
                widget.image = File(imagePick.path);
              }
            });
          },
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/pick_photo_image.png',
                ),
                const SizedBox(height: 8),
                const Text('Выбрать фото', style: linkTextStyle),
              ],
            ),
          ),
        )),
        const Spacer(),
        NextStepButton(
            title: 'ПРОДОЛЖИТЬ',
            onPressed: () {
              //add navigation to SetPhotoWidget()
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SetPhotoWidget();
              }));
            }),
        SizedBox(height: bottomOffset),
        SizedBox(height: MediaQuery.of(context).padding.bottom),
      ],
    );
  }
}
