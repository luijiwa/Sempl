// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/login/ui/auth_scope.dart';

class InputCodeWidget extends StatefulWidget {
  const InputCodeWidget({
    super.key,
    required this.codeController,
  });
  final TextEditingController codeController;
  @override
  State<InputCodeWidget> createState() => _InputCodeWidgetState();
}

class _InputCodeWidgetState extends State<InputCodeWidget> {
  Timer? _timer;
  int _start = 60;
  @override
  void initState() {
    super.initState();
    countDownTimer();
  }

  void countDownTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void resetTimer() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }
    setState(() {
      _start = 60;
    });
    countDownTimer(); // Запустить таймер снова
  }

  @override
  void dispose() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const blueColor = Color(0xFF99BFD4);
    final richTextStyle = TextStyle(
        fontSize: 14,
        color: _start == 0 ? AppThemeColor.black : const Color(0xFFB9B9B9));
    final linkTextStyle = TextStyle(
      fontSize: 14,
      decoration: TextDecoration.underline,
      decorationColor: _start == 0 ? blueColor : const Color(0xFFDEEAF1),
      color: _start == 0 ? blueColor : const Color(0xFFDEEAF1),
    );
    var pinTheme = PinTheme(
      width: MediaQuery.of(context).size.width - 32,
      height: MediaQuery.of(context).size.height * 0.078,
      textStyle: const TextStyle(fontSize: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFCECECE),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    var errorPinTheme = pinTheme.copyWith(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE36F6F),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
    return Column(
      children: [
        Pinput(
          controller: widget.codeController,
          keyboardType: TextInputType.number,
          length: 5,
          defaultPinTheme: pinTheme,
          errorPinTheme: errorPinTheme,
          submittedPinTheme: pinTheme.copyWith(
            decoration: BoxDecoration(
              border: Border.all(
                color: blueColor,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          errorBuilder: (_, __) => const SizedBox.shrink(),
          validator: (value) {
            if (value == '22222') return null;
            return 'Неверный код';
          },
        ),
        Row(
          children: [
            Text(
              '${_start ~/ 60}:${(_start % 60).toString().padLeft(2, '0')}',
              style: const TextStyle(color: blueColor, fontSize: 14),
            ),
            Text(' Не получили код?',
                style: richTextStyle.copyWith(fontSize: 12)),
            TextButton(
                onPressed: () {
                  if (_start == 0) {
                    resetTimer();
                  } else {
                    null;
                  }
                },
                style: TextButton.styleFrom(foregroundColor: blueColor),
                child: Text('Отправь еще раз',
                    style: linkTextStyle.copyWith(fontSize: 12))),
          ],
        )
      ],
    );
  }
}
