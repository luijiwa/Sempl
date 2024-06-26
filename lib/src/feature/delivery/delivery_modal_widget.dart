import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';

class ReusableModalWidget extends StatelessWidget {
  final String? title;
  final String message;
  final String firstButtonText;
  final String secondButtonText;
  final VoidCallback firstButtonAction;
  final VoidCallback secondButtonAction;

  const ReusableModalWidget({
    super.key,
    this.title,
    required this.message,
    required this.firstButtonText,
    required this.secondButtonText,
    required this.firstButtonAction,
    required this.secondButtonAction,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 22),
      backgroundColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 22).copyWith(
          top: width * 0.04581,
          bottom: width * 0.0509,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null)
              Text(
                title!.toUpperCase(),
                maxLines: 2,
                style: Theme.of(context).textTheme.appProfileTitle,
              ),
            if (title != null) SizedBox(height: height * 0.01),
            Text(
              message,
              maxLines: 2,
              style: TextStyle(
                fontSize: width > 320 ? 15 : 12,
                height: 1.5,
              ),
            ),
            SizedBox(height: height * 0.02),
            SizedBox(
              height: 0.1186228814 * width,
              width: double.maxFinite,
              child: OutlinedButton(
                onPressed: firstButtonAction,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: AppThemeColor.blueColor,
                  ),
                ),
                child: Text(
                  firstButtonText,
                  style: TextStyle(
                    fontSize: width > 320 ? 14 : 12,
                    color: AppThemeColor.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.005),
            SizedBox(
              height: 0.1186228814 * width,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: secondButtonAction,
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF99BFD4),
                ),
                child: Text(
                  secondButtonText,
                  style: TextStyle(
                    fontSize: width > 320 ? 14 : 12,
                    color: AppThemeColor.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DeliveryModalWidget extends StatelessWidget {
  const DeliveryModalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ReusableModalWidget(
      title: 'Адрес доставки',
      message:
          'Адрес доставки изменен, сохранить\n его как основной адрес доставки?',
      firstButtonText: 'НЕ МЕНЯТЬ',
      secondButtonText: 'СОХРАНИТЬ И ПРОДОЛЖИТЬ',
      firstButtonAction: () => Navigator.pop(context),
      secondButtonAction: () =>
          context.goNamed(AppRoutes.confirmationOrderTypeOneScreen.name),
    );
  }
}
