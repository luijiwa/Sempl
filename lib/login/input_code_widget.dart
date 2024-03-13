import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class InputCodeWidget extends StatefulWidget {
  const InputCodeWidget({
    super.key,
  });

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
    const richTextStyle = TextStyle(
        fontSize: 14, fontFamily: 'SourceSansPro', color: Colors.black);
    const linkTextStyle = TextStyle(
      fontSize: 14,
      fontFamily: 'SourceSansPro',
      decoration: TextDecoration.underline,
      decorationColor: blueColor,
      color: blueColor,
    );
    var pinTheme = PinTheme(
      width: MediaQuery.of(context).size.width - 32,
      height: 65,
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
              style: const TextStyle(
                  color: blueColor, fontFamily: 'SourceSansPro', fontSize: 14),
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
