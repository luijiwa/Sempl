import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/enums/button_push.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/core/widget/out_button.dart';
import 'package:sempl/src/feature/survey/bloc/survey_bloc.dart';
import 'package:sempl/src/feature/survey/ui/confirmation_survey_screen.dart';

// FifthStepWidget
class FifthStepWidget extends StatefulWidget {
  final VoidCallback onNextPage;

  const FifthStepWidget({required this.onNextPage, super.key});

  @override
  State<FifthStepWidget> createState() => _FifthStepWidgetState();
}

class _FifthStepWidgetState extends State<FifthStepWidget> {
  File? image;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
      showGeneralDialog(
        barrierDismissible: true,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 150),
        transitionBuilder:
            (context, animation, secondaryAnimation, Widget? child) => SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        context: context,
        pageBuilder: (_, animation, secondaryAnimation) {
          final myBloc = BlocProvider.of<SurveyBloc>(context);

          return BlocProvider.value(
            value: myBloc,
            child: SafeArea(
              child: SizedBox.expand(
                child: SetPhotoWidget(image: image!),
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: PickerPhotoWidget(onPickImage: _pickImage),
    );
}

// PickerPhotoWidget
class PickerPhotoWidget extends StatelessWidget {
  const PickerPhotoWidget({required this.onPickImage, super.key});

  final VoidCallback onPickImage;

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
          borderRadius: BorderRadius.circular(50),
          onTap: onPickImage,
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
        ),),
        const Spacer(),
        BlocConsumer<SurveyBloc, SurveyState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status.isSuccess) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfirmationSurveyScreen(),),);
            } else if (state.status.isFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Что-то пошло не так'),
                ),
              );
            }
          },
          builder: (context, state) => NextStepButton(
                title: 'ПРОДОЛЖИТЬ',
                onPressed: () {
                  context
                      .read<SurveyBloc>()
                      .add(const SurveyEvent.sendResultSurvey());
                },),
        ),
        const BottomPadding(),
      ],
    );
  }
}

// SetPhotoWidget
class SetPhotoWidget extends StatelessWidget {
  const SetPhotoWidget({required this.image, super.key});

  final File image;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    // final imageWidget = Image.file(image);

    return BlocProvider.value(
      value: context.read<SurveyBloc>(),
      child: Scaffold(
        appBar: AppBar(
          leading: const CustomBackButton(),
          centerTitle: true,
          title: Text(
            'CROP',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
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
                      image: DecorationImage(
                        image: FileImage(File(image.path)),
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
                        //   color: AppThemeColor.black,
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.13),
                child: const AutoSizeText(
                  'Выберите новую фотографию, загрузите её и измените размер\nс помощью пальцев',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  maxLines: 3,
                ),
              ),
              const Spacer(),
              OutButton(title: 'ОТМЕНА', onPressed: () {}),
              SizedBox(height: height * 0.005),
              SizedBox(
                height: 0.1186228814 * width,
                width: double.infinity,
                child: BlocConsumer<SurveyBloc, SurveyState>(
                  listenWhen: (previous, current) =>
                      previous.status != current.status,
                  listener: (context, state) {
                    state.status.isSuccess
                        ? Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const ConfirmationSurveyScreen(),),)
                        : null;
                  },
                  builder: (context, state) => ElevatedButton(
                      onPressed: () {
                        state.status.isInLoading
                            ? null
                            : () {
                                context
                                    .read<SurveyBloc>()
                                    .add(const SurveyEvent.sendResultSurvey());
                              };
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF99BFD4),
                      ),
                      child: AutoSizeText(
                        'СОХРАНИТЬ И ОПУБЛИКОВАТЬ',
                        style: TextStyle(
                          fontSize: width > 320 ? 15 : 12,
                          color: AppThemeColor.grey,
                        ),
                      ),
                    ),
                ),
              ),
              const BottomPadding(),
            ],
          ),
        ),
      ),
    );
  }
}
