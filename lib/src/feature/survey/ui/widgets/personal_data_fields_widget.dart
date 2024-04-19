import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:my_app/src/core/components/dropdown_custom_widget_new.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/feature/survey/ui/widgets/questions_padding.dart';

class PersonalDataFieldsWidget extends StatelessWidget {
  const PersonalDataFieldsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

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
        SizedBox(height: height * 0.016),
        TextField(
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Имя',
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Фамилия',
          ),
        ),
        const SizedBox(height: 4),
        const DropdownCustomWidgetNew(
            hint: 'Пол', listItems: ['Мужской', 'Женский', 'Не указывать']),
        const QuestionsPadding(),
        TextField(
          inputFormatters: [
            MaskTextInputFormatter(
                mask: '##/##/####',
                filter: {"#": RegExp(r'[0-9]')},
                type: MaskAutoCompletionType.lazy),
          ],
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Дата рождения',
          ),
        ),
        const QuestionsPadding(),
        TextField(
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Имя в приложении',
          ),
        ),
        const QuestionsPadding(),
        TextField(
          decoration: InputDecoration(
            contentPadding: edgeInsets,
            hintText: 'Почта',
          ),
        ),
      ],
    );
  }
}
