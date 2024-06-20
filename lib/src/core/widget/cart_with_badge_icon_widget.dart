import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/constant/generated/assets.gen.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/extentions/build_context_ext.dart';
import 'package:sempl/src/feature/cart/bloc/cart_bloc.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';

class CartWithBadgeIconWidget extends StatelessWidget {
  const CartWithBadgeIconWidget({
    super.key,
    this.color = Colors.white,
  });
  final Color color;
  @override
  Widget build(BuildContext context) => BlocBuilder<CartBloc, CartState>(
        bloc: DependenciesScope.of(context).cartBloc,
        buildWhen: (previous, current) => previous.items != current.items,
        builder: (context, state) {
          final length = state.items.isNotEmpty ? state.items.length : null;
          return GestureDetector(
            onTap: () => context.pushNamed(AppRoutes.cart.name),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 5, end: 10),
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.instagram,
                badgeColor: AppThemeColor.yellow,
                borderRadius: BorderRadius.circular(
                    length != null && length < 10 ? 5 : 10),
              ),
              badgeContent: length != null
                  ? Text(
                      length.toString(),
                      style: context.text.itemRatingDescription
                          .copyWith(fontSize: 8, height: 1),
                    )
                  : null,
              showBadge: state.items.isNotEmpty,
              child: IconButton(
                onPressed: () => context.pushNamed(AppRoutes.cart.name),
                icon: Assets.icons.cart.svg(
                  width: 23,
                  colorFilter: ColorFilter.mode(
                    color,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          );
        },
      );
}
