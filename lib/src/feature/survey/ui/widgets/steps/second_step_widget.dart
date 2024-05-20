import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/widget/bottom_padding.dart';
import 'package:my_app/src/core/widget/next_step_button.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/feature/survey/ui/widgets/address_data_fields_widget.dart';

class SecondStepWidget extends StatelessWidget {
  const SecondStepWidget({super.key, required this.onNextPage});
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.035),
          const AddressDataFieldsWidget(),
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
          NextStepButton(title: 'ШАГ 3', onPressed: onNextPage),
          const BottomPadding(),
        ],
      ),
    );
  }
}
