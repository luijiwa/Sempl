import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class RequiredInputField extends StatefulWidget {
  const RequiredInputField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  State<RequiredInputField> createState() => _RequiredInputFieldState();
}

class _RequiredInputFieldState extends State<RequiredInputField> {
  late TextEditingController _controller;
  bool _isTextEmpty = true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_textListener);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _textListener() {
    setState(() {
      _isTextEmpty = _controller.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final padding = height * 0.0161; // 15
    log(padding.toString());

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Stack(
            children: [
              if (_isTextEmpty)
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.014, horizontal: height * 0.023),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText.rich(
                      TextSpan(
                        text: widget.hintText,
                        children: const [
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontFamily: 'SourceSansPro',
                            ),
                          )
                        ],
                      ),
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'SourceSansPro',
                        color: AppThemeColor.gris,
                      ),
                      minFontSize: 5,
                      maxLines: 1,
                    ),
                  ),
                ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: height * 0.014, horizontal: height * 0.023),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide:
                        BorderSide(width: 0.5, color: AppThemeColor.gris),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide:
                        BorderSide(width: 0.5, color: AppThemeColor.blueColor),
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide:
                        BorderSide(width: 0.5, color: AppThemeColor.gris),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide:
                        BorderSide(width: 0.5, color: AppThemeColor.gris),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
