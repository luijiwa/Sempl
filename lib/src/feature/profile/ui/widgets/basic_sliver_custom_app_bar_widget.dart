import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/src/core/components/custom_back_button.dart';
import 'package:my_app/src/core/theme/theme.dart';

class BasicSliverCustomAppBarWidget extends StatelessWidget {
  const BasicSliverCustomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        leading: const CustomBackButton(),
        title: const Text('SEMPL!'),
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.appTitleMedium,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ));
  }
}
