import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/survey/ui/widgets/address_data_fields_widget.dart';
import 'package:sempl/src/feature/survey/ui/widgets/personal_data_fields_widget.dart';

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
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.15),
                      child: const AutoSizeText(
                        'Изменения будут сохранены в профиле',
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(height: width * 0.0458),
                    PersonalDataFieldsWidget(
                      onChangeName: (String name) => logger.info(name),
                      onChangeGender: (String gender) {
                        logger.info(gender);
                      },
                      onChangeLastName: (String lastName) =>
                          logger.info(lastName),
                      onChangeBirthdate: (String birthdate) =>
                          logger.info(birthdate),
                      onChangeLogin: (String login) {},
                      onChangeEmail: (String email) {},
                    ),
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
