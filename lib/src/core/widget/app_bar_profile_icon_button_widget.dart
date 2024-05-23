import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';

class AppBarProfileIconButtonWidget extends StatelessWidget {
  const AppBarProfileIconButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.1,
      height: width * 0.1,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppThemeColor.blueColor,
              image: const DecorationImage(
                image: AssetImage('assets/images/profile.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: AppThemeColor.blueColor,
                width: 1.0,
              ),
            ),
          ),
          ClipOval(
            child: Material(
                shape: const CircleBorder(),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => context.pushNamed(AppRoutes.profile.name),
                )),
          ),
        ],
      ),
    );
  }
}
