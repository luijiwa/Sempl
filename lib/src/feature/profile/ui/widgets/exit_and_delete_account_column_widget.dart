import 'package:flutter/material.dart';
import 'package:sempl/src/core/constant/generated/assets.gen.dart';
import 'package:sempl/src/core/theme/theme.dart';
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
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Заявка на удаление профиля принята',
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
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
