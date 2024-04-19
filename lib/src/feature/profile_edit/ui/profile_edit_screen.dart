import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/custom_back_button.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/feature/survey/ui/widgets/address_data_fields_widget.dart';
import 'package:my_app/src/feature/survey/ui/widgets/personal_data_fields_widget.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                leading: const CustomBackButton(),
                title: const Text('SEMPL!'),
              ),
              SizedBox(height: width * 0.058535),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const AutoSizeText('Изменения будут сохранены в профиле '),
                    SizedBox(height: width * 0.04581),
                    const PersonalDataFieldsWidget(),
                    SizedBox(height: width * 0.13743),
                    const AddressDataFieldsWidget(),
                    SizedBox(height: width * 0.170515),
                    const Center(
                      child: AutoSizeText(
                        '*Не найдено такой улицы',
                        style:
                            TextStyle(color: AppThemeColor.rose, fontSize: 12),
                        maxLines: 1,
                        minFontSize: 10,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Center(
                      child: AutoSizeText(
                        '*Поля обязательные для заполнения',
                        style:
                            TextStyle(color: AppThemeColor.rose, fontSize: 12),
                        maxLines: 1,
                        minFontSize: 10,
                      ),
                    ),
                    SizedBox(height: width * 0.02),
                    NextStepButton(
                        title: 'СОХРАНИТЬ ИЗМЕНЕНИЯ ',
                        onPressed: () {
                          // if (_addressFormKey.currentState!.validate()) {
                          // } else {}
                        }),
                    const BottomPadding(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
