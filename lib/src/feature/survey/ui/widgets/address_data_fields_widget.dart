import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sempl/src/core/widget/required_input_field.dart';
import 'package:sempl/src/core/theme/theme.dart';

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
    final edgeInsets = EdgeInsets.symmetric(
        vertical: width * 0.02803813559, horizontal: width * 0.0496059322);
    var zipCodeFormatter = MaskTextInputFormatter(
        mask: '### ###', filter: {"#": RegExp(r'[0-9]')});

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
          RequiredInputField(
              hintText: 'Город',
              keyboardType: TextInputType.streetAddress,
              inputFormatters: [
                // Запрещает вводить любые символы, кроме букв, пробелов и дефиса
                // (в том числе и в unicode-символах)
                // (например, кириллица, тире, пробелы и т.д.)
                FilteringTextInputFormatter.allow(
                    RegExp(r'[a-zA-Zа-яА-Я., -]+')),
              ]),
          const SizedBox(height: 4),
          RequiredInputField(
              hintText: 'Улица',
              keyboardType: TextInputType.streetAddress,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[а-яА-Я0-9/ -]+')),
              ]),
          const SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: RequiredInputField(
                  hintText: 'Номер дома',
                  keyboardType: TextInputType.streetAddress,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp(r'[a-zA-Zа-яА-Я0-9/. :, -]+')),
                  ],
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: RequiredInputField(
                    hintText: 'Номер квартиры',
                    keyboardType: TextInputType.streetAddress,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Zа-яА-Я0-9/. :, -]+')),
                    ]),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.streetAddress,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp(r'[a-zA-Zа-яА-Я0-9/. :, -]+')),
                  ],
                  decoration: InputDecoration(
                    contentPadding: edgeInsets,
                    hintText: 'Подъезд',
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: RequiredInputField(
                  hintText: 'Почтовый индекс',
                  isError: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [zipCodeFormatter],
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
// TextField(
//                   decoration: InputDecoration(
//                       contentPadding: EdgeInsets.symmetric(
//                           vertical: width * 0.02803813559,
//                           horizontal: width * 0.0496059322),
//                       label: RequiredStringWidget(
//                         hintText: 'Почтовый индекс',
//                       )),
//                 ),