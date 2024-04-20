import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/components/required_input_field.dart';
import 'package:my_app/src/core/components/text_input_field.dart';
import 'package:my_app/src/core/theme/theme.dart';

class AddressDataFieldsWidget extends StatefulWidget {
  const AddressDataFieldsWidget({
    super.key,
  });
  @override
  State<AddressDataFieldsWidget> createState() =>
      _AddressDataFieldsWidgetState();
}

class _AddressDataFieldsWidgetState extends State<AddressDataFieldsWidget> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Form(
      key: widget.key, // Привязка формы к GlobalKey

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AutoSizeText(
            'АДРЕС ДОСТАВКИ',
            style: Theme.of(context).textTheme.appProfileTitle,
            maxLines: 1,
          ),
          SizedBox(height: width * 0.05),
          const RequiredInputField(
            hintText: 'Город',
          ),
          const SizedBox(height: 4),
          const RequiredInputField(
            hintText: 'Улица',
          ),
          const SizedBox(height: 4),
          const Row(
            mainAxisSize: MainAxisSize.min,
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
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(child: TextInputField(hintText: 'Подъезд')),
              const SizedBox(width: 4),
              Expanded(
                child: RequiredInputField(
                  hintText: 'Почтовый индекс',
                  isError: true,
                  validator: (value) {
                    // if (value.isEmpty) {
                    //   return '';
                    // }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
