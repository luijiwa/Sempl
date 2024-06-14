import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/core/widget/custom_back_button.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/login/bloc/auth_bloc.dart';
import 'package:sempl/src/feature/login/ui/auth_scope.dart';
import 'package:sempl/src/feature/login/ui/widgets/header_widget.dart';
import 'package:sempl/src/feature/login/ui/widgets/input_code_widget.dart';
import 'package:sempl/src/feature/login/ui/widgets/phone_input_widget.dart';
import 'widgets/header_section.dart';
import 'widgets/term_of_use.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final PageController _pageViewController;
  late final TextEditingController _phoneController;
  late final TextEditingController _codeController;
  late final MaskTextInputFormatter maskFormatter;
  int _currentPageIndex = 0;
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _phoneController = TextEditingController();
    _codeController = TextEditingController();
    maskFormatter = MaskTextInputFormatter(
      mask: '### ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    _phoneController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  void _handleAuthState(BuildContext context, AuthState state) {
    if (state.errorMessage.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Что-то пошло не так'),
        ),
      );
    }
    if (state.status == AuthenticationStatus.authenticated) {
      if (state.loginStatus == LoginStatus.registered) {
        context.goNamed(AppRoutes.main.name);
      } else if (state.loginStatus == LoginStatus.unregistered) {
        context.goNamed(AppRoutes.loginConfirmation.name);
      }
    }
  }

  void _onNextButtonPressed(BuildContext context) {
    bool isPush = true;
    if (_currentPageIndex == 0 && isChecked && isPush) {
      if (_formKey.currentState!.validate()) {
        AuthScope.of(context)
            .signInFirstStepWithPhone(maskFormatter.getUnmaskedText());
        setState(() {
          _currentPageIndex++;
        });
        _pageViewController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
        isPush = false;
      }
    } else if (_currentPageIndex == 1 && isPush) {
      AuthScope.of(context).signInWithPhoneAndCode(_codeController.text);
      isPush = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double maxHeight = constraints.maxHeight;
        final double maxWidth = constraints.maxWidth;
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
            listener: _handleAuthState,
            child: Scaffold(
              extendBodyBehindAppBar: true,
              resizeToAvoidBottomInset: false,
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
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                title: const Text("SEMPL!"),
                leading: _currentPageIndex == 0
                    ? null
                    : CustomBackButton(
                        onPressed: () {
                          setState(() {
                            _currentPageIndex--;
                          });
                          _pageViewController.previousPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn,
                          );
                        },
                      ),
              ),
              body: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  HeaderSection(maxHeight: maxHeight, maxWidth: maxWidth),
                  Expanded(
                    child: SafeArea(
                      maintainBottomViewPadding: true,
                      top: false,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Column(
                          children: [
                            SizedBox(height: 0.045 * maxHeight),
                            Expanded(
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
                            TermOfUse(
                              isChecked: isChecked,
                              onChanged: (value) {
                                if (value == null) return;
                                setState(() {
                                  isChecked = value;
                                });
                              },
                            ),
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
                                                  maskFormatter
                                                      .getUnmaskedText());

                                          setState(() {
                                            _currentPageIndex++;
                                          });
                                          _pageViewController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 300),
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
                                        AuthScope.of(context)
                                            .signInWithPhoneAndCode(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AutoSizeText(
                                          'ПРОДОЛЖИТЬ',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Icon(Icons.arrow_forward, size: 15),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
