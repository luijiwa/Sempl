import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({
    super.key,
    this.onChanged,
    this.activeColor = AppThemeColor.blueColor,
    this.inactiveColor = AppThemeColor.blueColor,
    this.size = 19.0,
  });
  final ValueChanged<bool>? onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final double size;
  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
        });
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: _value ? widget.activeColor : widget.inactiveColor,
            width: 1.0,
          ),
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: _value
              ? Container(
                  key: const ValueKey<bool>(true),
                  height: widget.size * 0.7,
                  width: widget.size * 0.7,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _value ? widget.activeColor : widget.inactiveColor,
                    border: Border.all(
                      color: _value ? widget.activeColor : widget.inactiveColor,
                      width: 2.0,
                    ),
                  ),
                )
              : Container(key: const ValueKey<bool>(false)),
        ),
      ),
    );
  }
}
