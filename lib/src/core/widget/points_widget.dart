import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class PointsWidget extends StatelessWidget {
  const PointsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const BoxDecoration(
          color: AppThemeColor.yellow,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
          child: Text('50 баллов'.toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 9, color: AppThemeColor.purple),),
        ),);
}
