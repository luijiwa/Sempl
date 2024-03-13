import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneInputWidget extends StatelessWidget {
  const PhoneInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          child: Container(
            height: 60,
            width: 140,
            decoration: const BoxDecoration(
              color: Color(0xFFCECECE),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
            ),
            child: const Row(
              children: [
                Spacer(),
                SizedBox(
                  width: 40,
                  height: 200,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: const Color(0xFF99BFD4),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: InternationalPhoneNumberInput(
            selectorConfig: const SelectorConfig(
              // selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              setSelectorButtonAsPrefixIcon: false,
              leadingPadding: 10,

              trailingSpace: true,
            ),
            initialValue: PhoneNumber(isoCode: 'RU'),
            inputDecoration: const InputDecoration(
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: Color(0xFFCECECE),
              ),
              // errorText: 'пожалуйста, заполните это поле',
              hintText: '000 000 00 00',
            ),
            onInputChanged: (PhoneNumber value) {},
          ),
        ),
      ],
    );
  }
}
