import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/feature/survey/bloc/survey_bloc.dart';

class FourStepWidget extends StatefulWidget {
  const FourStepWidget({required this.onNextPage, super.key});
  final VoidCallback onNextPage;

  @override
  State<FourStepWidget> createState() => _FourStepWidgetState();
}

class _FourStepWidgetState extends State<FourStepWidget> {
  late final GlobalKey<FormState> _formKey;
  @override
  void initState() {
    super.initState();

    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.035),
            AutoSizeText(
              'ВАШИ СОЦИАЛЬНЫЕ СЕТИ',
              style: Theme.of(context).textTheme.appProfileTitle,
              maxLines: 1,
            ),
            SizedBox(height: height * 0.016),
            Padding(
              padding: EdgeInsets.only(right: width * 0.05), //30

              child: const AutoSizeText(
                'Некоторые из наших тестов продукта будут включать участие в социальных сетях.\nУкажите ссылки на профили сейчас, чтобы получить признание и вознаграждение за ваш вклад',
                maxLines: 5,
              ),
            ),
            SizedBox(height: height * 0.035),
            TextFormField(
              validator: (value) => value == null ? '' : null,
              onChanged: (value) => context.read<SurveyBloc>().add(
                    SurveyEvent.setVkProfile(value),
                  ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: width * 0.02803813559,
                  horizontal: width * 0.0496059322,
                ),
                hintText: 'VK',
              ),
            ),
            SizedBox(height: height * 0.005),
            TextFormField(
              validator: (value) => value == null ? '' : null,
              onChanged: (value) => context.read<SurveyBloc>().add(
                    SurveyEvent.setTelegramProfile(value),
                  ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: width * 0.02803813559,
                  horizontal: width * 0.0496059322,
                ),
                hintText: 'Telegram',
              ),
            ),
            const Spacer(),
            NextStepButton(
                title: 'ШАГ 5',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, proceed to the next page or submit the data.
                    widget.onNextPage();
                  }
                },),
            const BottomPadding(),
          ],
        ),
      ),
    );
  }
}
