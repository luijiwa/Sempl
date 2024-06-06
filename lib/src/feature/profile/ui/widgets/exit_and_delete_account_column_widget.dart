import 'package:flutter/material.dart';
import 'package:sempl/src/core/constant/generated/assets.gen.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/feature/delivery/delivery_modal_widget.dart';
import 'package:sempl/src/feature/login/ui/auth_scope.dart';

class ExitAndDeleteAccountColumnWidget extends StatelessWidget {
  const ExitAndDeleteAccountColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () => AuthScope.of(context).signOut(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.exit.svg(),
                  const SizedBox(width: 10),
                  const Text('Выйти'),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppThemeColor.pink,
              ),
              onPressed: () {
                // AuthScope.of(context).signOut();
                ///TODO
                showDialog(
                    useSafeArea: false,
                    context: context,
                    builder: (context) => const DeleteProfileModalWidget());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.deleteIcon.svg(),
                  const SizedBox(width: 10),
                  const Text('Удалить профиль'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DeleteProfileModalWidget extends StatelessWidget {
  const DeleteProfileModalWidget({
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
                'Удалить аккаунт'.toUpperCase(),
                maxLines: 2,
                style: Theme.of(context).textTheme.appProfileTitle,
              ),
              SizedBox(height: height * 0.01),
              Text(
                'Вы действительно хотите удалить профиль?',
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
                  onPressed: () => AuthScope.of(context).signOut(),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      width: 1,
                      color: AppThemeColor.blueColor,
                    ),
                  ),
                  child: Text(
                    'Да',
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF99BFD4),
                  ),
                  child: Text(
                    'Нет, вернуться назад',
                    style: TextStyle(
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
