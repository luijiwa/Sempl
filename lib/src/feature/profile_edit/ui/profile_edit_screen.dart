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

  late final TextEditingController _nameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _loginController;
  late final TextEditingController _dateBirthController;
  late final TextEditingController _emailController;

  late final TextEditingController _cityController;
  late final TextEditingController _streetController;
  late final TextEditingController _houseController;
  late final TextEditingController _apartmentController;
  late final TextEditingController _postcodeController;
  bool _isFormValid = false;
  @override
  void initState() {
    super.initState();
    _form = GlobalKey<FormState>();
    _nameController = TextEditingController();
    _lastNameController = TextEditingController();
    _loginController = TextEditingController();
    _dateBirthController = TextEditingController();
    _emailController = TextEditingController();
    _cityController = TextEditingController();
    _streetController = TextEditingController();
    _houseController = TextEditingController();
    _apartmentController = TextEditingController();
    _postcodeController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _loginController.dispose();
    _dateBirthController.dispose();
    _emailController.dispose();
    _cityController.dispose();
    _streetController.dispose();
    _houseController.dispose();
    _apartmentController.dispose();
    _postcodeController.dispose();
    super.dispose();
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
                        nameController: _nameController,
                        initialName: fieldData.firstName,
                        lastNameController: _lastNameController,
                        initialLastName: fieldData.lastName,
                        onChangeGender: null,
                        initialGender:
                            fieldData.gender == 'male' ? 'Mужской' : 'Женский',
                        initialBirthdate: fieldData.birthdate,
                        birthdateController: _dateBirthController,
                        initialLogin: fieldData.login,
                        emailController: _emailController,
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
