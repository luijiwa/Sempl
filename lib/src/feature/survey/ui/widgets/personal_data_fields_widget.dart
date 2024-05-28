// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/widget/dropdown_custom_widget_new.dart';

class PersonalDataFieldsWidget extends StatelessWidget {
  const PersonalDataFieldsWidget({
    super.key,
    required this.onChangeName,
    required this.onChangeLastName,
    required this.onChangeGender,
    required this.onChangeBirthdate,
    required this.onChangeLogin,
    required this.onChangeEmail,
    this.initialName,
    this.initialLastName,
    this.initialGender,
    this.initialBirthdate,
    this.initialLogin,
    this.initialEmail,
  });

  final void Function(String) onChangeName;
  final void Function(String) onChangeLastName;
  final void Function(String) onChangeGender;
  final void Function(String) onChangeBirthdate;
  final void Function(String) onChangeLogin;
  final void Function(String) onChangeEmail;
  final String? initialName;
  final String? initialLastName;
  final String? initialGender;
  final String? initialBirthdate;
  final String? initialLogin;
  final String? initialEmail;
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
        TextFormField(
          keyboardType: TextInputType.name,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-Я]')),
          ],
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Имя',
          ),
          onChanged: onChangeName,
          validator: validate,
          initialValue: initialName,
        ),
        const SizedBox(height: 4),
        TextFormField(
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-Я]')),
          ],
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Фамилия',
          ),
          onChanged: onChangeLastName,
          validator: validate,
          initialValue: initialLastName,
        ),
        const SizedBox(height: 4),
        DropdownCustomWidgetNew(
          initialValue: initialGender,
          onChanged: (value) => onChangeGender,
          hint: 'Пол',
          listItems: const ['Мужской', 'Женский', 'Не указывать'],
        ),
        SizedBox(height: width * 0.1),
        TextFormField(
          keyboardType: TextInputType.datetime,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            DateInputFormatter(),
          ],
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Дата рождения',
          ),
          onChanged: onChangeBirthdate,
          validator: validate,
          initialValue: initialBirthdate,
        ),
        SizedBox(height: width * 0.1),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Имя в приложении',
          ),
          validator: validate,
          onChanged: onChangeLogin,
          initialValue: initialLogin,
        ),
        SizedBox(height: width * 0.1),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Почта',
          ),
          validator: validate,
          onChanged: onChangeEmail,
          initialValue: initialEmail,
        ),
      ],
    );
  }

  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return '';
    }
    return null;
  }
}

@Deprecated('Use DateInputFormatter instead')
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
