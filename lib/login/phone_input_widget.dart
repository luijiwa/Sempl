import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneInputWidget extends StatelessWidget {
  const PhoneInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 0.5,
          color: const Color(0xFF99BFD4),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: InternationalPhoneNumberInput(
        initialValue: PhoneNumber(isoCode: 'RU'),
        inputDecoration: const InputDecoration(
          border: InputBorder.none,

          // errorText: 'пожалуйста, заполните это поле',
          hintText: '000 000 00 00',
        ),
        onInputChanged: (PhoneNumber value) {},
      ),
    );
  }
}
