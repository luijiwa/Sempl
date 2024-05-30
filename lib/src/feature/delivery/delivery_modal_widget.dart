import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/enums/button_push.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/feature/delivery/bloc/delivery_bloc.dart';

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
            top: width * 0.04581,
            bottom: width * 0.0509,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Адрес доставки'.toUpperCase(),
                maxLines: 2,
                style: Theme.of(context).textTheme.appProfileTitle,
              ),
              SizedBox(height: height * 0.01),
              Text(
                'Адрес доставки изменен, сохранить\n его как основной адрес доставки?',
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      width: 1,
                      color: AppThemeColor.blueColor,
                    ),
                  ),
                  child: Text(
                    'НЕ МЕНЯТЬ',
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
                child: BlocListener<DeliveryBloc, DeliveryState>(
                  listenWhen: (previous, current) =>
                      previous.statusSend != current.statusSend,
                  listener: (context, state) {
                    if (state.statusSend == ButtonPushStatus.success) {
                      context.goNamed(AppRoutes.surveyOrder.name);
                    }
                  },
                  child: ElevatedButton(
                    onPressed: () {
                      // context.read<DeliveryBloc>().add();
                      // context.goNamed(AppRoutes.surveyOrder.name);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF99BFD4),
                    ),
                    child: Text(
                      'СОХРАНИТЬ И ПРОДОЛЖИТЬ',
                      style: TextStyle(
                        fontSize: width > 320 ? 14 : 12,
                        color: AppThemeColor.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
