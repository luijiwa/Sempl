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
    return LayoutBuilder(builder: (context, constraints) {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
      // final maxHeight = constraints.maxHeight.toDouble();
      // final maxWidth = constraints.hashCode.toDouble();
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
                  child: SizedBox(
                    height: 0.06 * height,
                    width: double.infinity,
                  ),
                ),
              Positioned(
                right: 0,
                child: Container(
                  height: 0.06 * height,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: _phoneError ? const Color(0xFFf9dee3) : Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                child: Container(
                  height: 0.06 * height,
                  constraints: const BoxConstraints(
                    maxWidth: 130,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    color: _phoneError
                        ? const Color(0xFFf9dee3)
                        : const Color(0xFFF8F8F8),
                  ),
                ),
              ),
              Container(
                height: 0.06 * height,
                width: width,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: !_phoneError
                        ? const Color(0xFF99BFD4)
                        : const Color(0xFFE25C74),
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: InternationalPhoneNumberInput(
                    spaceBetweenSelectorAndTextField: 12,
                    selectorConfig: const SelectorConfig(
                      setSelectorButtonAsPrefixIcon: false,
                      trailingSpace: false,
                    ),
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
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (_phoneError)
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: const Text(
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
    });
  }
}
