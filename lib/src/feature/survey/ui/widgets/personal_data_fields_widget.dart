import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/src/core/widget/dropdown_custom_widget_new.dart';
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
        vertical: width * 0.02803813559, horizontal: width * 0.0496059322);
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
        TextFormField(
          keyboardType: TextInputType.datetime,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            // DateOfBirthInputFormatter(),
            DateInputFormatter(),
            // MaskTextInputFormatter(
            //     mask: '01/23/4###',
            //     filter: {
            //       "0": RegExp(r'[0123]'),
            //       "1": RegExp(r'[0-9]'),
            //       "2": RegExp(r'[01]'),
            //       "3": RegExp(r'[0-9]'),
            //       "4": RegExp(r'[12]'),
            //       "#": RegExp(r'[31][12]|[0-9]')
            //     },
            //     type: MaskAutoCompletionType.lazy),

            // DateOfBirthInputFormatter(),
            // CustomDateTextFormatter()
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
      if (int.parse(value) > 31) {
        return value.substring(0, 1);
      }
      return value;
    } else if (value.length <= 4) {
      if (int.parse(value.substring(0, 2)) > 12) {
        return value.substring(0, 2);
      }
      return '${value.substring(0, 2)}/${value.substring(2)}';
    } else {
      if (int.parse(value.substring(0, 2)) > 12) {
        return value.substring(0, 3);
      }
      return '${value.substring(0, 2)}/${value.substring(2, 4)}/${value.substring(4, 8)}';
    }
  }
}

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    if (newText.length > 8) {
      // If the new text is longer than the format, do not allow the edit.
      return oldValue;
    }

    var formattedText = newText.replaceAll(RegExp(r'[^0-9]'), '');
    String day = '';
    String month = '';
    String year = '';

// Extract day
    if (formattedText.length >= 2) {
      day = formattedText.substring(0, 2);
      int dayValue = int.parse(day);
      if (dayValue > 31) {
        day = '31';
      } else if (dayValue < 1) {
        day = '01';
      }
    } else {
      // Allow for deletion by not padding when the length is less than 2
      day = formattedText;
    }

// Extract month
    if (formattedText.length >= 4) {
      month = formattedText.substring(2, 4);
      int monthValue = int.parse(month);
      if (monthValue > 12) {
        month = '12';
      } else if (monthValue < 1) {
        month = '01';
      }
    } else if (formattedText.length == 3) {
      // This handles the case where the user has entered three digits and is trying to delete.
      month = formattedText
          .substring(2); // Just take the single digit without padding.
    } else if (formattedText.length == 2) {
      // This handles the case where the user has entered two digits for the month.
      month = formattedText.substring(2);
    }
// Extract year
    if (formattedText.length > 4) {
      year = formattedText.substring(4); // Take the rest as year
      if (year.length == 4) {
        // Check if all four digits of the year are entered
        int yearValue = int.parse(year);
        if (yearValue > 2024) {
          year = '2024';
        } else if (yearValue < 1900) {
          year = '1900';
        }
      }
    }
    // Combine them together
    if (year.isNotEmpty) {
      formattedText = '$day/$month/$year';
    } else if (month.isNotEmpty) {
      formattedText = '$day/$month';
    } else {
      formattedText = day;
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
