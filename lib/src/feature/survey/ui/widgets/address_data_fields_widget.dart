import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/required_input_field.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/src/core/theme/theme.dart';

class AddressDataFieldsWidget extends StatelessWidget {
  const AddressDataFieldsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AutoSizeText(
          'АДРЕС ДОСТАВКИ',
          style: Theme.of(context).textTheme.appProfileTitle,
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
      ],
    );
  }
}
