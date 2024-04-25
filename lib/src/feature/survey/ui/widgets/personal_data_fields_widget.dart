import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:my_app/src/core/components/dropdown_custom_widget_new.dart';
import 'package:my_app/src/core/theme/theme.dart';

class PersonalDataFieldsWidget extends StatelessWidget {
  const PersonalDataFieldsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.sizeOf(context).width;

    final edgeInsets = EdgeInsets.symmetric(
        vertical: height * 0.013, horizontal: height * 0.023);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'ПЕРСОНАЛЬНАЯ ИНФОРМАЦИЯ',
          style: Theme.of(context).textTheme.appProfileTitle,
          maxLines: 1,
        ),
        SizedBox(height: width * 0.05),
        TextField(
          keyboardType: TextInputType.name,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-Я]')),
          ],
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Имя',
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-Я]')),
          ],
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Фамилия',
          ),
        ),
        const SizedBox(height: 4),
        const DropdownCustomWidgetNew(
            hint: 'Пол', listItems: ['Мужской', 'Женский', 'Не указывать']),
        SizedBox(height: width * 0.1),
        TextField(
          keyboardType: TextInputType.datetime,
          inputFormatters: [
            // FilteringTextInputFormatter.digitsOnly,
            // MaskTextInputFormatter(
            //     mask: '##/##/####',
            //     filter: {"#": RegExp(r'[0-9]')},
            //     type: MaskAutoCompletionType.lazy),
            DateOfBirthInputFormatter()
          ],
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Дата рождения',
          ),
        ),
        SizedBox(height: width * 0.1),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Имя в приложении',
          ),
        ),
        SizedBox(height: width * 0.1),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Почта',
          ),
        ),
      ],
    );
  }
}

class DateOfBirthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final text = _formatDate(newValue.text);
    return newValue.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }

  String _formatDate(String value) {
    value = value.replaceAll(RegExp(r'[^0-9]'), '');
    if (value.length <= 2) {
      return value;
    } else if (value.length <= 4) {
      return '${value.substring(0, 2)}/${value.substring(2)}';
    } else {
      return '${value.substring(0, 2)}/${value.substring(2, 4)}/${value.substring(4, 8)}';
    }
  }
}
