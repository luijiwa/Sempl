import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({
    super.key,
    this.onChanged,
    this.activeColor = AppThemeColor.blueColor,
    this.inactiveColor = AppThemeColor.blueColor,
    this.size = 19.0,
    this.value = false,
  });
  final ValueChanged<bool>? onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final double size;
  final bool value;
  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          // setState(() {
          //   _value = !_value;
          // });
        },
        child: Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: widget.value ? widget.activeColor : widget.inactiveColor,
            ),
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: widget.value
                ? Container(
                    key: const ValueKey<bool>(true),
                    height: widget.size * 0.7,
                    width: widget.size * 0.7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.value
                          ? widget.activeColor
                          : widget.inactiveColor,
                      border: Border.all(
                        color: widget.value
                            ? widget.activeColor
                            : widget.inactiveColor,
                        width: 2.0,
                      ),
                    ),
                  )
                : Container(key: const ValueKey<bool>(false)),
          ),
        ),
      );
}
