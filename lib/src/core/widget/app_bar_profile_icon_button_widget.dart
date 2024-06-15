import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';

class AppBarProfileIconButtonWidget extends StatelessWidget {
  const AppBarProfileIconButtonWidget({
    super.key,
    this.image,
  });
  final String? image;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final ImageProvider avatar = image == null || image!.isEmpty
        ? const AssetImage("assets/images/empty_avatar.png") as ImageProvider
        : NetworkImage(image!) as ImageProvider;
    return SizedBox(
      width: width * 0.1,
      height: width * 0.1,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppThemeColor.blueColor,
              image: DecorationImage(
                image: avatar,
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: AppThemeColor.blueColor,
              ),
            ),
          ),
          ClipOval(
            child: Material(
                shape: const CircleBorder(),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => context.pushNamed(AppRoutes.profile.name),
                ),),
          ),
        ],
      ),
    );
  }
}
