import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/components/out_button.dart';
import 'package:my_app/src/feature/survey/confirmation_survey_screen.dart';

class SetPhotoWidget extends StatefulWidget {
  const SetPhotoWidget({
    super.key,
  });

  @override
  State<SetPhotoWidget> createState() => _SetPhotoWidgetState();
}

class _SetPhotoWidgetState extends State<SetPhotoWidget> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double bottomOffset =
        height * 0.0639 - MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            size: 18,
          ),
          onPressed: () {
            // Обработчик нажатия кнопки назад
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Text(
          'CROP',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontFamily: 'SourceSansPro'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height * 0.035,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: width * 0.5,
                  backgroundImage:
                      Image.asset('assets/images/profile.jpg').image,
                  backgroundColor: Colors.transparent,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.undo,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.15),
              child: const AutoSizeText(
                'Выберите новую фотографию, загрузите её и измените ее размер с помощью пальцев',
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            OutButton(title: 'ОТМЕНА', onPressed: () {}),
            SizedBox(height: height * 0.01),
            NextStepButton(
                title: 'СОХРАНИТЬ И ОПУБЛИКОВАТЬ',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ConfirmationSurveyScreen();
                  }));
                }),
            SizedBox(height: bottomOffset),
            SizedBox(height: MediaQuery.of(context).padding.bottom),
          ],
        ),
      ),
    );
  }
}
