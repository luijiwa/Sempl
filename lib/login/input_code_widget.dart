import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class InputCodeWidget extends StatelessWidget {
  const InputCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var pinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(fontSize: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF99BFD4),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
    var errorPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(fontSize: 20),
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
          validator: (value) {
            return value == '22222' ? null : 'Pin is incorrect';
          },
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Text('Не получили код?'),
            TextButton(onPressed: () {}, child: const Text('Отправь еще раз')),
          ],
        )
      ],
    );
  }
}
