import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/checkbox_row.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/feature/survey/bloc/survey_bloc.dart';
import 'package:sempl/src/feature/survey/ui/widgets/personal_data_fields_widget.dart';
import 'package:sempl/src/feature/survey/ui/widgets/questions_padding.dart';

class FirstStepWidget extends StatefulWidget {
  const FirstStepWidget({
    super.key,
    required this.onNextPage,
  });
  final VoidCallback onNextPage;

  @override
  State<FirstStepWidget> createState() => _FirstStepWidgetState();
}

class _FirstStepWidgetState extends State<FirstStepWidget> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _genderController;
  late final TextEditingController _birthDateController;
  late final TextEditingController _loginController;
  late final TextEditingController _emailController;

  void _trySubmitForm() {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, proceed to the next page or submit the data.
      widget.onNextPage();
    }
  }

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final bloc = context.read<SurveyBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.035),
              PersonalDataFieldsWidget(
                onChangeName: (String firstName) =>
                    bloc.add(SurveyEvent.setFirstName(firstName)),
                onChangeLastName: (String lastName) =>
                    bloc.add(SurveyEvent.setLastName(lastName)),
                onChangeGender: (String gender) =>
                    bloc.add(SurveyEvent.setGender(gender)),
                onChangeBirthdate: (String birthdate) =>
                    bloc.add(SurveyEvent.setBirthdate(birthdate)),
                onChangeLogin: (String login) =>
                    bloc.add(SurveyEvent.setLogin(login)),
                onChangeEmail: (String email) =>
                    bloc.add(SurveyEvent.setEmail(email)),
              ),
              // const QuestionsPadding(),
              // const PasswordGroupWidget(),
              const QuestionsPadding(),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoSizeText(
                    'Коммуникация:',
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: height * 0.006),
                  const CheckboxRowWidget(
                    title:
                        'Я хочу получать рекламные электронные письма и информацию о приложениях',
                    value: true,
                    maxLines: 2,
                  )
                ],
              ),
              SizedBox(height: height * 0.02),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoSizeText(
                    'Конфиденциальность:',
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: height * 0.006),
                  const CheckboxRowWidget(
                    title: 'Я принимаю все правила',
                    value: false,
                    maxLines: 2,
                  )
                ],
              ),
              SizedBox(height: height * 0.0681),
              NextStepButton(
                title: 'ШАГ 2',
                onPressed: _trySubmitForm,
                enable: true,
              ),
              const BottomPadding(),
            ],
          ),
        ),
      ),
    );
  }
}
