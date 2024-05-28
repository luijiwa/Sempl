import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/profile/bloc/profile_bloc.dart';
import 'package:sempl/src/feature/survey/ui/widgets/address_data_fields_widget.dart';
import 'package:sempl/src/feature/survey/ui/widgets/personal_data_fields_widget.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key, required this.bloc});
  final ProfileBloc bloc;

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  late final GlobalKey<FormState> _form;
  bool _isFormValid = false;
  @override
  void initState() {
    super.initState();
    _form = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    final fieldData = widget.bloc.state.userFields;

    final double width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Form(
            key: _form,
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
                        onChangeName: (String firstName) {},
                        initialName: fieldData.firstName,
                        initialLastName: fieldData.lastName,
                        onChangeLastName: logger.info,
                        onChangeGender: logger.info,
                        initialGender: fieldData.gender,
                        onChangeBirthdate: logger.info,
                        initialBirthdate: fieldData.birthdate,
                        onChangeLogin: (String login) {},
                        initialLogin: fieldData.login,
                        onChangeEmail: (String email) {},
                        initialEmail: fieldData.email,
                      ),
                      SizedBox(height: width * 0.13743),
                      AddressDataFieldsWidget(
                        initialCity: fieldData.city,
                        initialStreet: fieldData.street,
                        initialHouse: fieldData.address,
                        initialApartment: fieldData.apartmentNumber,
                        initialZipCode: fieldData.postalCode,
                      ),
                      SizedBox(height: width * 0.170515),
                      _isFormValid
                          ? const Center(
                              child: AutoSizeText(
                                '*Не найдено такой улицы',
                                style: TextStyle(
                                    color: AppThemeColor.rose, fontSize: 12),
                                maxLines: 1,
                                minFontSize: 10,
                                textAlign: TextAlign.center,
                              ),
                            )
                          : const SizedBox.shrink(),
                      _isFormValid
                          ? const Center(
                              child: AutoSizeText(
                                '*Поля обязательные для заполнения',
                                style: TextStyle(
                                    color: AppThemeColor.rose, fontSize: 12),
                                maxLines: 1,
                                minFontSize: 10,
                              ),
                            )
                          : const SizedBox.shrink(),
                      SizedBox(height: width * 0.02),
                      NextStepButton(
                          title: 'СОХРАНИТЬ ИЗМЕНЕНИЯ ',
                          onPressed: () {
                            if (_form.currentState!.validate()) {
                              if (_isFormValid == true) {
                                setState(() {
                                  _isFormValid = false;
                                });
                              }
                            } else {
                              setState(() {
                                _isFormValid = true;
                              });
                            }
                          }),
                      const BottomPadding(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
