import 'dart:ffi';
import 'dart:io' show File;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/survey/bloc/survey_bloc.dart';
import 'package:sempl/src/feature/survey/ui/widgets/five_step_resize_image_widget.dart';

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
    final bloc = context.read<SurveyBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: height * 0.035),
        AutoSizeText(
          'И ПОСЛЕДНЕЕ!',
          style: Theme.of(context).textTheme.appProfileTitle,
          maxLines: 1,
        ),
        SizedBox(height: height * 0.009),
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
        BlocProvider.value(
          value: context.read<SurveyBloc>(),
          child: NextStepButton(
              title: 'ПРОДОЛЖИТЬ',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SetPhotoWidget(),
                  ),
                );
              }),
        ),
        const BottomPadding(),
      ],
    );
  }
}
