import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneInputWidget extends StatefulWidget {
  const PhoneInputWidget({super.key});

  @override
  State<PhoneInputWidget> createState() => _PhoneInputWidgetState();
}

class _PhoneInputWidgetState extends State<PhoneInputWidget> {
  final TextEditingController _phoneController = TextEditingController();
  bool _phoneError = false;
  final initialPhone = PhoneNumber(isoCode: "RU");

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            if (_phoneError)
              Material(
                elevation: 10,
                color: const Color(0xFFE25C74),
                shadowColor: const Color(0xFFE25C74).withOpacity(0.2),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: const SizedBox(
                  height: 60,
                  width: double.maxFinite,
                ),
              ),
            Positioned(
              left: 0,
              child: Container(
                height: 60,
                width: 140,
                decoration: BoxDecoration(
                  color: _phoneError
                      ? const Color(0xFFf9dee3)
                      : const Color(0xFFF8F8F8),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                ),
                child: const Row(
                  children: [
                    Spacer(),
                    SizedBox(
                      width: 40,
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                height: 60,
                width: 240,
                decoration: BoxDecoration(
                  color: _phoneError ? const Color(0xFFf9dee3) : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: const Row(
                  children: [
                    Spacer(),
                    SizedBox(
                      width: 40,
                      height: 60,
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
                  color: !_phoneError
                      ? const Color(0xFF99BFD4)
                      : const Color(0xFFE25C74),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: InternationalPhoneNumberInput(
                spaceBetweenSelectorAndTextField: 2,
                selectorConfig: const SelectorConfig(
                  // selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  setSelectorButtonAsPrefixIcon: false,
                  trailingSpace: false,
                ),
                // textFieldController: _phoneController,
                onInputChanged: (PhoneNumber phoneNumber) {
                  log(phoneNumber.phoneNumber.toString());
                  setState(() {
                    if (phoneNumber.phoneNumber != null) {
                      if (phoneNumber.phoneNumber!.length > 4 &&
                          phoneNumber.phoneNumber!.length <= 5) {
                        _phoneError = true;
                      } else {
                        _phoneError = false;
                      }
                    }
                  });
                },
                initialValue: initialPhone,
                inputDecoration: const InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Color(0xFFCECECE),
                    fontFamily: 'SourceSansPro',
                  ),
                  hintText: '000 000 00 00',
                  // errorText: _phoneErrorText,
                ),
              ),
            ),
          ],
        ),
        if (_phoneError)
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'пожалуйста, заполните это поле',
              style: TextStyle(
                color: Color(0xFFE25C74),
                fontFamily: 'SourceSansPro',
                fontSize: 10,
              ),
            ),
          ),
      ],
    );
  }
}
