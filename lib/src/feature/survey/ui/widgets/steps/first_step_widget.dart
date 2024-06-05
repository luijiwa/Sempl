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
  late final GlobalKey<FormState> _formKey;
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
    //Инициализация контроллеров
    _formKey = GlobalKey<FormState>();
    _nameController = TextEditingController();
    _lastNameController = TextEditingController();
    _genderController = TextEditingController();
    _birthDateController = TextEditingController();
    _loginController = TextEditingController();
    _emailController = TextEditingController();

    /// Добавление слушателей
    _nameController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setFirstName(_nameController.value.text),
      );
    });
    _lastNameController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setLastName(_lastNameController.text),
      );
    });
    _genderController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setGender(_genderController.text),
      );
    });
    _birthDateController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setBirthdate(_birthDateController.text),
      );
    });
    _loginController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setLogin(_loginController.text),
      );
    });
    _emailController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setEmail(_emailController.text),
      );
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
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
                nameController: _nameController,
                lastNameController: _lastNameController,
                onChangeGender: (gender) =>
                    bloc.add(SurveyEvent.setGender(gender)),
                birthdateController: _birthDateController,
                loginController: _loginController,
                emailController: _emailController,
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
                  BlocBuilder<SurveyBloc, SurveyState>(
                    buildWhen: (previous, current) =>
                        previous.surveyModel.wantAdvertising !=
                        previous.surveyModel.wantAdvertising,
                    builder: (context, state) {
                      return CheckboxRowWidget(
                        title:
                            'Я хочу получать рекламные электронные письма и информацию о приложениях',
                        value: state.surveyModel.wantAdvertising,
                        maxLines: 2,
                        onChange: (value) {
                          bloc.add(SurveyEvent.setWantAdvertising(value!));
                        },
                      );
                    },
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
                  BlocBuilder<SurveyBloc, SurveyState>(
                    buildWhen: (previous, current) =>
                        previous.surveyModel.acceptPolicy !=
                        previous.surveyModel.acceptPolicy,
                    builder: (context, state) {
                      return CheckboxRowWidget(
                        title: 'Я принимаю все правила',
                        value: state.surveyModel.acceptPolicy,
                        maxLines: 2,
                        onChange: (value) {
                          bloc.add(SurveyEvent.setAcceptPolicy(value!));
                        },
                      );
                    },
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
