import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/bottom_padding.dart';
import 'package:my_app/src/core/components/next_step_button.dart';
import 'package:my_app/src/core/components/required_input_field.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/src/feature/delivery/delivery_app_bar.dart';
import 'package:my_app/theme.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

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
              height * 0.276,
            ),
            child: const DeliveryAppBar()),
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
                  fontFamily: 'SourceSansPro',
                ),
              ),
              SizedBox(height: height * 0.01),
              const AutoSizeText(
                'АДРЕС ДОСТАВКИ',
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'DrukCyr',
                ),
                maxLines: 1,
              ),
              SizedBox(height: height * 0.016),
              const RequiredInputField(
                hintText: 'Город',
              ),
              const SizedBox(height: 4),
              const RequiredInputField(
                hintText: 'Улица',
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  Expanded(
                    child: RequiredInputField(hintText: 'Номер дома'),
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: RequiredInputField(hintText: 'Номер квартиры'),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  Expanded(child: TextInputField(hintText: 'Подъезд')),
                  SizedBox(width: 4),
                  Expanded(
                    child: RequiredInputField(hintText: 'Почтовый индекс'),
                  ),
                ],
              ),
              const Spacer(),
              const Center(
                child: AutoSizeText(
                  '*Не найдено такой улицы',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppThemeColor.rose,
                      fontFamily: 'SourceSansPro',
                      fontSize: 12),
                  maxLines: 1,
                  minFontSize: 10,
                ),
              ),
              const Center(
                child: AutoSizeText(
                  '*Поля обязательные для заполнения',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppThemeColor.rose,
                      fontFamily: 'SourceSansPro',
                      fontSize: 12),
                  maxLines: 1,
                  minFontSize: 10,
                ),
              ),
              SizedBox(height: 10),
              NextStepButton(
                title: 'ПРОДОЛЖИТЬ',
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                            content: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Подтвердите адрес',
                              maxLines: 2,
                              style: TextStyle(fontSize: 16),
                            ),
                            ElevatedButton(
                              child: const Text('НЕТ'),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                            ElevatedButton(
                              child: const Text('ДА'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ))),
              ),
              const BottomPadding(),
            ],
          ),
        ),
      ),
    );
  }
}
