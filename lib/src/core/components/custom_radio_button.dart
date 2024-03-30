import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor = AppThemeColor.blueColor,
    this.inactiveColor = AppThemeColor.blueColor,
    this.size = 19.0,
  });
  final bool value;
  final ValueChanged<bool>? onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final double size;
  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onChanged != null) {
          widget.onChanged!(!widget.value);
        }
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: widget.value ? widget.activeColor : widget.inactiveColor,
            width: 1.0,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(2.0),
          child: widget.value
              ? Container(
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
              : null,
        ),
      ),
    );
  }
}
