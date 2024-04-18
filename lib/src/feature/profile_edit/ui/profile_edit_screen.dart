import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/custom_back_button.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/feature/survey/ui/widgets/address_data_fields_widget.dart';
import 'package:my_app/src/feature/survey/ui/widgets/personal_data_fields_widget.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                leading: const CustomBackButton(),
                title: const Text('SEMPL!'),
              ),
              SizedBox(height: width * 0.058535),
              const AutoSizeText('Изменения будут сохранены в профиле '),
              SizedBox(height: width * 0.04581),
              const PersonalDataFieldsWidget(),
              SizedBox(height: width * 0.13743),
              const AddressDataFieldsWidget(),
              SizedBox(height: width * 0.170515),
              const Center(
                child: AutoSizeText(
                  '*Не найдено такой улицы',
                  style: TextStyle(color: AppThemeColor.rose, fontSize: 12),
                  maxLines: 1,
                  minFontSize: 10,
                  textAlign: TextAlign.center,
                ),
              ),
              const Center(
                child: AutoSizeText(
                  '*Поля обязательные для заполнения',
                  style: TextStyle(color: AppThemeColor.rose, fontSize: 12),
                  maxLines: 1,
                  minFontSize: 10,
                ),
              ),
              SizedBox(height: width * 0.02),
              NextStepButton(title: 'СОХРАНИТЬ ИЗМЕНЕНИЯ ', onPressed: () {}),
              const BottomPadding(),
            ],
          ),
        ),
      ),
    );
  }
}
