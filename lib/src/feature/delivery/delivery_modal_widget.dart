import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/core/router/app_routes.dart';
import 'package:my_app/src/core/theme/theme.dart';

class DeliveryModalWidget extends StatelessWidget {
  const DeliveryModalWidget({
    super.key,
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
            top: 16,
            bottom: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Адрес доставки'.toUpperCase(),
                maxLines: 2,
                style: const TextStyle(fontSize: 30, fontFamily: 'DrukCyr'),
              ),
              SizedBox(height: height * 0.01),
              Text(
                'Адрес доставки изменен, сохранить\n его как основной адрес доставки?',
                maxLines: 2,
                style: TextStyle(
                    fontSize: width > 320 ? 15 : 12,
                    height: 1.5,
                    fontFamily: 'SourceSansPro'),
              ),
              SizedBox(height: height * 0.02),
              SizedBox(
                height: 0.055 * height,
                width: double.maxFinite,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      width: 1,
                      color: AppThemeColor.blueColor,
                    ),
                  ),
                  child: Text(
                    'НЕ МЕНЯТЬ',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: width > 320 ? 14 : 12,
                      color: AppThemeColor.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.005),
              SizedBox(
                height: 0.055 * height,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    context.goNamed(AppRoutes.surveyOrder.name);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF99BFD4),
                  ),
                  child: Text(
                    'СОХРАНИТЬ И ПРОДОЛЖИТЬ',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: width > 320 ? 14 : 12,
                      color: AppThemeColor.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
