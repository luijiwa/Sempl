import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class FeedbackCheckboxRowWidget extends StatelessWidget {
  const FeedbackCheckboxRowWidget({
    required this.title, required this.value, required this.onChanged, super.key,
    this.maxLines = 1,
  });
  final String title;
  final int maxLines;
  final bool value;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) => GestureDetector(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment : CrossAxisAlignment.start
        children: [
          Checkbox(
            onChanged: (bool? value) {
              if (value == null) return;
              onChanged(value);
            },
            value: value,
            activeColor: const Color(0xFF99BFD4),
            side: WidgetStateBorderSide.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return const BorderSide(color: AppThemeColor.blueColor);
              }
              return const BorderSide(color: AppThemeColor.blueColor);
            }
                // BorderSide(
                //     color: _value ? AppThemeColor.blueColor : AppThemeColor.gris),
                ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
          ),
          Flexible(
            child: AutoSizeText(
              title,
              style: const TextStyle(color: AppThemeColor.black, fontSize: 15),
              maxLines: maxLines,
            ),
          ),
        ],
      ),
    );
}
