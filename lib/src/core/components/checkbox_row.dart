import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

class CheckboxRowWidget extends StatefulWidget {
  const CheckboxRowWidget({
    super.key,
    required this.title,
    required this.value,
    this.maxLines = 1,
  });
  final String title;
  final int maxLines;
  final bool value;

  @override
  State<CheckboxRowWidget> createState() => _CheckboxRowWidgetState();
}

class _CheckboxRowWidgetState extends State<CheckboxRowWidget> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment : CrossAxisAlignment.start
        children: [
          Checkbox(
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value!;
              });
            },
            activeColor: const Color(0xFF99BFD4),
            side: MaterialStateBorderSide.resolveWith(
              (states) => BorderSide(
                  color: _value ? AppThemeColor.blueColor : AppThemeColor.gris),
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
          ),
          Flexible(
            child: AutoSizeText(
              widget.title,
              style: TextStyle(
                  color: _value ? AppThemeColor.black : AppThemeColor.gris,
                  fontSize: 15),
              maxLines: widget.maxLines,
            ),
          ),
        ],
      ),
    );
  }
}
