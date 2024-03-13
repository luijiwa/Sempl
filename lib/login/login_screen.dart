import 'package:flutter/material.dart';
import 'package:my_app/confirmation/confirmation_screen.dart';
import 'package:my_app/login/header_widget.dart';
import 'package:my_app/login/input_code_widget.dart';
import 'package:my_app/login/phone_input_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late PageController _pageViewController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // Не прокручивать при открытии клавиатуры

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(268),
        child: HeaderWidget(),
      ),
      body: SafeArea(
        maintainBottomViewPadding: true,
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 36),
              SizedBox(
                height: 160,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageViewController,
                  children: const [
                    PhoneInputWidget(),
                    InputCodeWidget(),
                  ],
                ),
              ),
              const Spacer(),
              const TermOfUse(),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  if (_currentPageIndex == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConfirmationScreen(),
                      ),
                    );
                  } else {
                    setState(() {
                      _currentPageIndex++;
                    });
                    _pageViewController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF99BFD4),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ПРОДОЛЖИТЬ',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 15,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 56),
            ],
          ),
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
      fontSize: 12,
      fontFamily: 'SourceSansPro',
      color: Colors.black,
    );

    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}
