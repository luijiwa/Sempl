import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/core/widget/out_button.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/survey/ui/confirmation_survey_screen.dart';

/// Сделать его состоянием пятого экрана
class SetPhotoWidget extends StatefulWidget {
  const SetPhotoWidget({
    super.key,
    required this.surveyContext,
  });
  final BuildContext surveyContext;
  @override
  State<SetPhotoWidget> createState() => _SetPhotoWidgetState();
}

class _SetPhotoWidgetState extends State<SetPhotoWidget> {
  @override
  Widget build(surveyContext) {
    final double height = MediaQuery.of(surveyContext).size.height;
    final double width = MediaQuery.of(surveyContext).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          'CROP',
          style: Theme.of(surveyContext).textTheme.titleLarge,
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
                    onTap: () => Navigator.of(surveyContext).pop(),
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
              child: ElevatedButton(
                onPressed: () {
                  // surveyContext
                  //     .read<SurveyBloc>()
                  //     .add(const SurveyEvent.sendResultSurvey());
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ConfirmationSurveyScreen();
                  }));
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
            const BottomPadding(),
          ],
        ),
      ),
    );
  }
}
