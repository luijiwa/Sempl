import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/theme.dart';
import 'dart:io';
import 'dart:async';

class FifthStepWidget extends StatelessWidget {
  const FifthStepWidget({super.key, required this.onNextPage});
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double bottomOffset =
        height * 0.0639 - MediaQuery.of(context).padding.bottom;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: height * 0.035),
          const AutoSizeText(
            'И ПОСЛЕДНЕЕ',
            style: TextStyle(fontSize: 30, fontFamily: 'DrukCyr'),
            maxLines: 1,
          ),
          const AutoSizeText('Если хотите, добавьте фотографию профиля'),
          const Spacer(),
          Center(
            child: InkWell(
              onTap: () async {
                final ImagePicker picker = ImagePicker();

                final XFile? image =
                    await picker.pickImage(source: ImageSource.gallery);
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
            ),
          ),
          const Spacer(),
          NextStepButton(title: 'ПРОДОЛЖИТЬ', onPressed: onNextPage),
          SizedBox(height: bottomOffset),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}
