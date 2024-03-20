import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class FifthStepWidget extends StatelessWidget {
  const FifthStepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double bottomOffset = 0.2 * height;

    return SizedBox(
      height: height -
          0.058 * height -
          bottomOffset -
          MediaQuery.of(context).padding.bottom,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AutoSizeText(
            'И ПОСЛЕДНЕЕ',
            style: TextStyle(fontSize: 30, fontFamily: 'DrukCyr'),
            maxLines: 1,
          ),
          const AutoSizeText('Если хотите, добавьте фотографию профиля'),
          SizedBox(height: height * 0.2),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'images/pick_photo_image.png',
                    ),
                    const SizedBox(height: 8),
                    const Text('Выбрать фото', style: linkTextStyle),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
