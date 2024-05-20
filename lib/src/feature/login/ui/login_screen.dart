import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/confirmation/confirmation_screen.dart';
import 'package:my_app/src/feature/login/ui/widgets/header_widget.dart';
import 'package:my_app/src/feature/login/ui/widgets/input_code_widget.dart';

import 'package:my_app/src/feature/login/ui/widgets/phone_input_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late PageController _pageViewController;
  int _currentPageIndex = 0;
  final _formKey = GlobalKey<FormState>();

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
    return LayoutBuilder(builder: (context, constraints) {
      final maxHeight = constraints.maxHeight.toDouble();
      final bottomOffset =
          (maxHeight * 0.07) - MediaQuery.of(context).viewPadding.bottom;
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset:
              false, // Не прокручивать при открытии клавиатуры
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              maxHeight * 0.276,
            ),
            child: const HeaderWidget(),
          ),
          body: SafeArea(
            maintainBottomViewPadding: true,
            top: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // ConstrainedBox(constraints: const BoxConstraints(maxHeight: 36)),
                  SizedBox(height: 0.045 * maxHeight),

                  SizedBox(
                    height: 0.3 * maxHeight,
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _pageViewController,
                      children: [
                        PhoneInputWidget(
                          formKey: _formKey,
                        ),
                        const InputCodeWidget(),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const TermOfUse(),
                  SizedBox(height: 0.02 * maxHeight),
                  SizedBox(
                    height: 0.058 * maxHeight,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_currentPageIndex == 0) {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              _currentPageIndex++;
                            });
                            _pageViewController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          }
                        } else if (_currentPageIndex == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ConfirmationScreen(),
                            ),
                          );
                        }
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'ПРОДОЛЖИТЬ',
                            style: TextStyle(
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
                  ),
                  SizedBox(height: bottomOffset),
                ],
              ),
            ),
          ),
        ),
      );
    });
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
      decoration: TextDecoration.underline,
      decorationColor: Color(0xFF99BFD4),
      color: Color(0xFF99BFD4),
    );
    const termOfUseTextStyle = TextStyle(
      fontSize: 12,
      color: AppThemeColor.black,
    );

    return Row(
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
          child: AutoSizeText.rich(
            TextSpan(
              // text: 'Hello ',
              style: termOfUseTextStyle,
              children: [
                const TextSpan(text: 'Я соглашаюсь с '),
                TextSpan(
                  text: 'Условиями Пользовательского Соглашения',
                  style: linkTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => logger.i('Tap Here onTap'),
                ),
                const TextSpan(text: ' и '),
                TextSpan(
                  text: 'Политикой Конфиденциальности',
                  style: linkTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => logger.i('Tap Here onTap'),
                ),
              ],
            ),
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
