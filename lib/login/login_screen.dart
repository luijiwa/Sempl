import 'package:flutter/material.dart';
import 'package:my_app/login/header_widget.dart';
import 'package:my_app/login/phone_input_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              const HeaderWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22)
                    .copyWith(top: 268, bottom: 56),
                child: const Column(
                  children: [
                    SizedBox(height: 36),
                    PhoneInputWidget(),
                    Spacer(),
                    // const InputCodeWidget(),
                    TermOfUse(),
                    SizedBox(height: 25),
                    ContinueButton(),
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

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 15),
          foregroundColor: const Color.fromARGB(255, 183, 222, 243),
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
    );
  }
}

class TermOfUse extends StatefulWidget {
  const TermOfUse({super.key});

  @override
  State<TermOfUse> createState() => _TermOfUseState();
}

class _TermOfUseState extends State<TermOfUse> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    const linkTextStyle = TextStyle(
      fontSize: 12,
      fontFamily: 'SourceSansPro',
      decoration: TextDecoration.underline,
      decorationColor: Color(0xFF99BFD4),
      color: Color(0xFF99BFD4),
    );
    const termOfUseTextStyle = TextStyle(
        fontSize: 12, fontFamily: 'SourceSansPro', color: Colors.black);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: isChecked,
          activeColor: const Color(0xFF99BFD4),
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(color: Color(0xFF99BFD4)),
          ),
          onChanged: (value) {
            if (value == null) return;
            setState(() {
              isChecked = value;
            });
          },
        ),
        Flexible(
          child: RichText(
            text: TextSpan(
              style: termOfUseTextStyle,
              children: [
                const TextSpan(text: 'Я соглашаюсь с '),
                WidgetSpan(
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Условиями Пользовательского',
                      style: linkTextStyle,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
                WidgetSpan(
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Соглашения',
                      style: linkTextStyle,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
                const TextSpan(text: ' и '),
                WidgetSpan(
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Политикой Конфиденциальности',
                      style: linkTextStyle,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
