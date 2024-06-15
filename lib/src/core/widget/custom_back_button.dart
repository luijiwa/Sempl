import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.onPressed});

  ///add onPressed
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) => IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_rounded,
        size: 18,
        weight: 500,
      ),
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        } else {
          context.pop();
        }
      },
    );
}
