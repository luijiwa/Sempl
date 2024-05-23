import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show TextInputFormatter;
import 'package:sempl/src/core/theme/theme.dart';

class RequiredInputField extends StatefulWidget {
  const RequiredInputField({
    super.key,
    required this.hintText,
    this.validator,
    this.isError = false,
    this.inputFormatters,
    this.keyboardType,
  });

  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool isError;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
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
    final double width = MediaQuery.sizeOf(context).width;

    final padding = height * 0.0161; // 15
    log(padding.toString());
    final border = Theme.of(context).inputDecorationTheme.defaultInput.border;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              if (_isTextEmpty)
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: width * 0.02803813559,
                      horizontal: width * 0.0496059322),
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
                            ),
                          )
                        ],
                      ),
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppThemeColor.gris,
                      ),
                      minFontSize: 5,
                      maxLines: 1,
                    ),
                  ),
                ),
              TextField(
                controller: _controller,
                inputFormatters: widget.inputFormatters,
                keyboardType: widget.keyboardType,
                decoration: InputDecoration(
                  filled: widget.isError ? true : false,
                  fillColor: const Color(0xFFE25C74).withOpacity(0.2),
                  enabledBorder: widget.isError
                      ? const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide:
                              BorderSide(width: 0.5, color: AppThemeColor.rose))
                      : null,
                  contentPadding: EdgeInsets.symmetric(
                      vertical: width * 0.02803813559,
                      horizontal: width * 0.0496059322),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
