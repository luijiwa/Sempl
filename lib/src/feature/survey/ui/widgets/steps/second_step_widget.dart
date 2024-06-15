import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/feature/survey/bloc/survey_bloc.dart';
import 'package:sempl/src/feature/survey/ui/widgets/address_data_fields_widget.dart';

class SecondStepWidget extends StatefulWidget {
  const SecondStepWidget({required this.onNextPage, super.key});
  final VoidCallback onNextPage;

  @override
  State<SecondStepWidget> createState() => _SecondStepWidgetState();
}

class _SecondStepWidgetState extends State<SecondStepWidget> {
  late final GlobalKey<FormState> _addressFormKey;
  late final TextEditingController _cityController;
  late final TextEditingController _streetController;
  late final TextEditingController _houseController;
  late final TextEditingController _apartmentController;
  late final TextEditingController _entranceController;
  late final TextEditingController _zipCodeController;
  @override
  void initState() {
    super.initState();
    _addressFormKey = GlobalKey<FormState>();

    _cityController = TextEditingController();
    _streetController = TextEditingController();
    _houseController = TextEditingController();
    _apartmentController = TextEditingController();
    _entranceController = TextEditingController();
    _zipCodeController = TextEditingController();
    _cityController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setCity(_cityController.value.text),
      );
    });
    _streetController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setStreet(_streetController.value.text),
      );
    });
    _houseController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setHouseNumber(_houseController.value.text),
      );
    });
    _apartmentController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setApartmentNumber(_apartmentController.value.text),
      );
    });
    _entranceController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setEntrance(_entranceController.value.text),
      );
    });
    _zipCodeController.addListener(() {
      BlocProvider.of<SurveyBloc>(context).add(
        SurveyEvent.setPostalCode(_zipCodeController.value.text),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Form(
        key: _addressFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.035),
            AddressDataFieldsWidget(
              cityController: _cityController,
              streetController: _streetController,
              houseController: _houseController,
              apartmentController: _apartmentController,
              entranceController: _entranceController,
              zipCodeController: _zipCodeController,
            ),
            const SizedBox(height: 8),
            const AutoSizeText(
              '*Поля обязательные для заполнения',
              style: TextStyle(color: AppThemeColor.rose, fontSize: 12),
              maxLines: 1,
              minFontSize: 10,
            ),
            const AutoSizeText(
              'После регистрации адрес можно изменить в личном кабинете',
              style: TextStyle(color: AppThemeColor.black, fontSize: 12),
              maxLines: 1,
              minFontSize: 10,
            ),
            const Spacer(),
            NextStepButton(
                title: 'ШАГ 3',
                onPressed: () {
                  if (_addressFormKey.currentState!.validate()) {
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
