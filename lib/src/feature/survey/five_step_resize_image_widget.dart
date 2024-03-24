import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/components/out_button.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/survey/confirmation_survey_screen.dart';
import 'package:my_app/theme.dart';

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

    logger.f(width * 0.02);
    return Scaffold(
      backgroundColor: const Color(0xffff8f8f8),
      appBar: AppBar(
        backgroundColor: const Color(0xffff8f8f8),
        leading: IconButton(
          icon: const Icon(
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
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: width,
                  height: width,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: AppThemeColor.blueColor,
                      width: 3.0,
                    ),
                  ),
                ),
                Positioned(
                  bottom: height * 0.045,
                  right: width * 0.02,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/arrow_return.png'),

                      // const Icon(
                      //   CupertinoIcons.arrow_uturn_left,
                      //   size: 30,
                      //   weight: 100,
                      //   color: Colors.black,
                      // ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.13),
              child: const AutoSizeText(
                'Выберите новую фотографию, загрузите её и измените ее размер с помощью пальцев',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 15,
                ),
                maxLines: 3,
              ),
            ),
            const Spacer(),
            OutButton(title: 'ОТМЕНА', onPressed: () {}),
            SizedBox(height: height * 0.005),
            SizedBox(
              height: 0.055 * height,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ConfirmationSurveyScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF99BFD4),
                ),
                child: AutoSizeText(
                  'СОХРАНИТЬ И ОПУБЛИКОВАТЬ',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: width > 320 ? 15 : 12,
                    color: AppThemeColor.grey,
                  ),
                ),
              ),
            ),
            const BottomPadding(),
          ],
        ),
      ),
    );
  }
}
