import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/widget/bottom_padding.dart';
import 'package:sempl/src/core/widget/next_step_button.dart';
import 'package:sempl/src/core/widget/custom_app_bar.dart';
import 'package:sempl/src/feature/delivery/delivery_modal_widget.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/survey/ui/widgets/address_data_fields_widget.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppThemeColor.grey,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              height * 0.24,
            ),
            child: const CustomAppBar()),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.035),
              const AutoSizeText(
                'Сначала подтвердите свой адрес проживания',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: width * 0.07635),
              const AddressDataFieldsWidget(
                initialCity: '',
                initialStreet: '',
                initialHouse: '',
                initialApartment: '',
                initialZipCode: '',
                initialEntrance: '',
              ),
              const Spacer(),
              const Center(
                child: AutoSizeText(
                  '*Не найдено такой улицы',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppThemeColor.rose, fontSize: 12),
                  maxLines: 1,
                  minFontSize: 10,
                ),
              ),
              const Center(
                child: AutoSizeText(
                  '*Поля обязательные для заполнения',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppThemeColor.rose, fontSize: 12),
                  maxLines: 1,
                  minFontSize: 10,
                ),
              ),
              const SizedBox(height: 10),
              NextStepButton(
                title: 'ПРОДОЛЖИТЬ',
                onPressed: () => showDialog(
                    useSafeArea: false,
                    context: context,
                    builder: (context) => const DeliveryModalWidget()),
              ),
              const BottomPadding(),
            ],
          ),
        ),
      ),
    );
  }
}
