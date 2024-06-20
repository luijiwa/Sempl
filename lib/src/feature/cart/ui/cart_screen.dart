import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sempl/src/core/theme/theme.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/widget/shimmer.dart';
import 'package:sempl/src/feature/cart/bloc/cart_bloc.dart';
import 'package:sempl/src/feature/cart/ui/widgets/empty_cart_widget.dart';
import 'package:sempl/src/feature/cart/ui/widgets/list_cart_items_widget.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: LayoutBuilder(
          builder: (context, constraint) => BlocBuilder<CartBloc, CartState>(
            bloc: DependenciesScope.of(context).cartBloc,
            buildWhen: (previous, current) => previous.status != current.status,
            builder: (context, state) {
              switch (state.status) {
                case ScreenStatus.empty:
                  return EmptyCartWidget(width: constraint.maxWidth);
                case ScreenStatus.success:
                  return ListCartItemsWidget(
                    width: constraint.maxWidth,
                  );
                case ScreenStatus.loading:
                  return Scaffold(
                    body: CustomScrollView(
                      slivers: [
                        DecoratedSliver(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          sliver: SliverPadding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 23.0)
                                    .copyWith(
                              top: 50,
                              bottom: MediaQuery.paddingOf(context).bottom + 60,
                            ),
                            sliver: SliverList.separated(
                              itemCount: 3,
                              separatorBuilder: (context, index) => Divider(
                                color: Colors.black.withOpacity(0.1),
                                thickness: 0.5,
                                height: 0.5,
                              ),
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Shimmer(
                                  size: Size(constraint.maxWidth, 200),
                                  color: AppThemeColor.blueColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                // case ScreenStatus.failure:
                //   return const ListCartItemsWidget();
                default:
                  return const Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
              }
            },
          ),
        ),
      );
}
