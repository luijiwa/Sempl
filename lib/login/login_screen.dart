import 'package:flutter/material.dart';
import 'package:my_app/login/header_widget.dart';
import 'package:pinput/pinput.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const HeaderWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 36),
                    const PhoneInputWidget(),

                    const InputCodeWidget(),

                    const SizedBox(height: 8), // Добавлен отступ
                    Wrap(
                      runSpacing: 6,
                      children: [
                        Checkbox(value: false, onChanged: (_) {}),
                        const Text('Я соглашаюсь с'),
                        const Flexible(
                          child: Text(
                            'Условиями Пользовательского Соглашения',
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        const Text('и'),
                        const Flexible(
                          child: Text(
                            'Политикой Конфиденциальности',
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8), // Добавлен отступ
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          foregroundColor:
                              const Color.fromARGB(255, 183, 222, 243),
                          backgroundColor: const Color(0xFF99BFD4),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('ПРОДОЛЖИТЬ',
                                style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 15,
                                  color: Colors.white,
                                )),
                            Icon(
                              size: 15,
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InputCodeWidget extends StatelessWidget {
  const InputCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pinput(
          length: 5,
          defaultPinTheme: _pinStyle(),
          errorPinTheme: _pinStyle().copyWith(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFE36F6F),
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
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

  PinTheme _pinStyle() {
    return PinTheme(
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
  }
}

class PhoneInputWidget extends StatelessWidget {
  const PhoneInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        // errorText: 'пожалуйста, заполните это поле',
        hintText: '000 000 00 00',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xFF99BFD4),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xFF99BFD4),
          ),
        ),
      ),
    );
  }
}
