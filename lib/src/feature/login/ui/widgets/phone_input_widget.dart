// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:sempl/src/core/theme/theme.dart';

class PhoneInputWidget extends StatefulWidget {
  const PhoneInputWidget({
    required this.formKey, required this.controller, required this.maskFormatter, super.key,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController controller;
  final MaskTextInputFormatter maskFormatter;
  @override
  State<PhoneInputWidget> createState() => _PhoneInputWidgetState();
}

class _PhoneInputWidgetState extends State<PhoneInputWidget> {
  bool _phoneError = false;
  @override
  Widget build(BuildContext context) {
    const blueColor = Color(0xFF99BFD4);
    const errorBackgroundColor = Color(0xFFf9dee3);
    const errorBorderColor = Color(0xFFE25C74);

    return LayoutBuilder(builder: (context, constraints) {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              if (_phoneError)
                Material(
                  elevation: 10,
                  color: errorBackgroundColor,
                  shadowColor: errorBorderColor.withOpacity(0.2),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: width * 0.03,
                        horizontal: double.maxFinite,
                      ),
                      child: Text(
                        '',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),),
                ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: width * 0.036,
                        // horizontal: width * 0.0497,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),),
                        color: _phoneError
                            ? errorBackgroundColor
                            : AppThemeColor.grey,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: width * 0.04),
                          Image.asset('assets/images/flag.png'),
                          const Text(
                            '  (+7) ▼',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                        ],
                      ),
                    ),
                  ),
                  Form(
                    key: widget.formKey,
                    child: TextFormField(
                      inputFormatters: [widget.maskFormatter],
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 10) {
                          setState(() {
                            _phoneError = true;
                          });
                          return '';
                        }
                        setState(() {
                          _phoneError = false;
                        });

                        return null;
                      },
                      controller: widget.controller,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                                vertical: width * 0.02804,
                                horizontal: width * 0.0497,)
                            .copyWith(left: width * 0.25),
                        hintText: '000 000 00 00',
                        filled: false,
                        // errorText: '',
                        errorStyle: const TextStyle(fontSize: 0, height: 0),
                        hintStyle:
                            Theme.of(context).textTheme.appBodyMedium.copyWith(
                                  color: AppThemeColor.blueColor,
                                ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          ///TODO Сделать в верхнем варианте вариант ошибки
          // Stack(
          //   children: [
          //     if (_phoneError)
          //       Material(
          //         elevation: 10,
          //         color: errorBorderColor,
          //         shadowColor: errorBorderColor.withOpacity(0.2),
          //         shape: const RoundedRectangleBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(30)),
          //         ),
          //         child: SizedBox(
          //           height: width * 0.1235,
          //           width: double.infinity,
          //         ),
          //       ),
          //     Container(
          //       height: width * 0.1235,
          //       width: double.infinity,
          //       decoration: BoxDecoration(
          //         color: _phoneError ? errorBackgroundColor : Colors.white,
          //         border: Border.all(
          //           width: 0.5,
          //           color: !_phoneError ? blueColor : errorBorderColor,
          //         ),
          //         borderRadius: BorderRadius.circular(30),
          //       ),
          //       child: Row(children: [
          //         Container(
          //           height: double.maxFinite,
          //           constraints: const BoxConstraints(
          //             maxWidth: 90,
          //           ),
          //           decoration: BoxDecoration(
          //             borderRadius: const BorderRadius.only(
          //                 topLeft: Radius.circular(30),
          //                 bottomLeft: Radius.circular(30)),
          //             color: _phoneError
          //                 ? errorBackgroundColor
          //                 : const Color(0xFFF8F8F8),
          //           ),
          //           child: Row(
          //             children: [
          //               SizedBox(width: width * 0.04),
          //               Image.asset('assets/images/flag.png'),
          //               const Text(
          //                 '  (+7) ▼',
          //                 style: TextStyle(
          //                   fontSize: 15,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Expanded(
          //           child: Container(
          //             margin: EdgeInsets.only(left: width * 0.03),
          //             decoration: BoxDecoration(
          //               borderRadius: const BorderRadius.only(
          //                   topRight: Radius.circular(30),
          //                   bottomRight: Radius.circular(30)),
          //               color:
          //                   _phoneError ? errorBackgroundColor : Colors.white,
          //             ),
          //             child: TextField(
          //               inputFormatters: [maskFormatter],
          //               keyboardType: TextInputType.phone,
          //               decoration: Theme.of(context)
          //                   .inputDecorationTheme
          //                   .searchInput
          //                   .copyWith(
          //                       contentPadding: EdgeInsets.symmetric(
          //                         vertical: width * 0.055,
          //                       ),
          //                       hintText: '000 000 00 00',
          //                       hintStyle: Theme.of(context)
          //                           .textTheme
          //                           .appBodyMedium
          //                           .copyWith(
          //                             color: AppThemeColor.blueColor,
          //                           )),
          //             ),
          //           ),
          //         ),
          //       ]),
          //     ),
          //   ],
          // ),
          if (_phoneError)
            Padding(
              padding: EdgeInsets.only(left: width * 0.05, top: height * 0.005),
              child: const AutoSizeText(
                'пожалуйста, заполните это поле',
                style: TextStyle(
                  color: Color(0xFFE25C74),
                  fontSize: 12,
                ),
                minFontSize: 8,
                maxLines: 1,
              ),
            ),
        ],
      );
    },);
  }
}
