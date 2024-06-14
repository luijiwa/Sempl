import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/login/bloc/auth_bloc.dart';
import 'package:sempl/src/feature/login/ui/auth_scope.dart';
import 'package:sempl/src/feature/login/ui/widgets/header_widget.dart';
import 'package:sempl/src/feature/login/ui/widgets/input_code_widget.dart';
import 'package:sempl/src/feature/login/ui/widgets/phone_input_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late PageController _pageViewController;
  late TextEditingController _phoneController;
  late TextEditingController _codeController;

  late MaskTextInputFormatter maskFormatter;
  int _currentPageIndex = 0;
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();

    _phoneController = TextEditingController();
    _codeController = TextEditingController();
    // if (kDebugMode) {
    //   _phoneController.text = '9293744874';
    //   _codeController.text = '99599';
    // }
    maskFormatter = MaskTextInputFormatter(
      mask: '### ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _phoneController.dispose();
    _codeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight.toDouble();
        final bottomOffset =
            (maxHeight * 0.07) - MediaQuery.of(context).viewPadding.bottom;
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: BlocListener<AuthBloc, AuthState>(
            bloc: DependenciesScope.of(context).authBloc,
            listenWhen: (previous, current) =>
                previous.errorMessage != current.errorMessage ||
                previous.loginStatus != current.loginStatus ||
                previous.code != current.code,
            listener: (context, state) {
              if (state.errorMessage.isNotEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Что-то пошло не так'),
                  ),
                );
              }
              // if (state.loginStatus == LoginStatus.unregistered ||
              //     state.loginStatus == LoginStatus.registered) {
              //   setState(() {
              //     _currentPageIndex++;
              //   });
              //   _pageViewController.nextPage(
              //     duration: const Duration(milliseconds: 300),
              //     curve: Curves.easeIn,
              //   );
              // }

              if (state.status == AuthenticationStatus.authenticated &&
                  state.loginStatus == LoginStatus.registered) {
                context.goNamed(AppRoutes.main.name);
              }

              if (state.status == AuthenticationStatus.authenticated &&
                  state.loginStatus == LoginStatus.unregistered) {
                context.goNamed(AppRoutes.loginConfirmation.name);
              }
            },
            child: Scaffold(
              floatingActionButton: kDebugMode
                  ? FloatingActionButton(
                      onPressed: () {
                        logger.i(DependenciesScope.of(context)
                            .authBloc
                            .state
                            .status);
                        // logger.i(_currentPageIndex);
                      },
                      child: const Icon(Icons.arrow_forward),
                    )
                  : null,
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(maxHeight * 0.276),
                child: const HeaderWidget(currentPage: 1),
              ),
              body: SafeArea(
                maintainBottomViewPadding: true,
                top: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 0.045 * maxHeight),
                      SizedBox(
                        height: 0.3 * maxHeight,
                        child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _pageViewController,
                          children: [
                            PhoneInputWidget(
                              formKey: _formKey,
                              controller: _phoneController,
                              maskFormatter: maskFormatter,
                            ),
                            InputCodeWidget(
                              codeController: _codeController,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      TermOfUse(
                          isChecked: isChecked,
                          onChanged: (value) {
                            if (value == null) return;
                            setState(() {
                              isChecked = value;
                            });
                          }),
                      SizedBox(height: 0.02 * maxHeight),
                      SizedBox(
                        height: 0.058 * maxHeight,
                        child: BlocBuilder<AuthBloc, AuthState>(
                          bloc: DependenciesScope.of(context).authBloc,
                          buildWhen: (previous, current) =>
                              previous.loginStatus != current.loginStatus,
                          builder: (context, state) {
                            return ElevatedButton(
                              onPressed: () {
                                bool isPush = true;
                                if (_currentPageIndex == 0 &&
                                    isChecked &&
                                    isPush) {
                                  if (_formKey.currentState!.validate()) {
                                    AuthScope.of(context)
                                        .signInFirstStepWithPhone(
                                            maskFormatter.getUnmaskedText());

                                    setState(() {
                                      _currentPageIndex++;
                                    });
                                    _pageViewController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeIn,
                                    );

                                    // setState(() {
                                    //   _currentPageIndex++;
                                    // });
                                    // _pageViewController.nextPage(
                                    //   duration: const Duration(milliseconds: 300),
                                    //   curve: Curves.easeIn,
                                    // );
                                    isPush = false;
                                  }
                                }
                                if (_currentPageIndex == 1 && isPush) {
                                  AuthScope.of(context).signInWithPhoneAndCode(
                                      _codeController.text);
                                  isPush = false;

                                  // if (state.loginStatus ==
                                  //     LoginStatus.unregistered) {
                                  //   AuthScope.of(context)
                                  //       .saveCode(_codeController.text);
                                  // }
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
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: bottomOffset),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class TermOfUse extends StatelessWidget {
  const TermOfUse(
      {super.key, required this.onChanged, required this.isChecked});
  final void Function(bool?) onChanged;
  final bool isChecked;
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
          side: WidgetStateBorderSide.resolveWith(
            (states) => const BorderSide(color: Color(0xFF99BFD4)),
          ),
          onChanged: onChanged,
        ),
        Flexible(
          child: AutoSizeText.rich(
            TextSpan(
              style: termOfUseTextStyle,
              children: [
                const TextSpan(text: 'Я соглашаюсь с '),
                TextSpan(
                  text: 'Условиями Пользовательского Соглашения',
                  style: linkTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => logger.info('Tap Here onTap'),
                ),
                const TextSpan(text: ' и '),
                TextSpan(
                  text: 'Политикой Конфиденциальности',
                  style: linkTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => logger.info('Tap Here onTap'),
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
