import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sempl/src/core/theme/theme.dart';

class CheckboxRowWidget extends StatefulWidget {
  const CheckboxRowWidget({
    required this.title, required this.value, super.key,
    this.maxLines = 1,
    this.onChange,
  });
  final String title;
  final int maxLines;
  final bool value;
  final void Function(bool?)? onChange;
  @override
  State<CheckboxRowWidget> createState() => _CheckboxRowWidgetState();
}

class _CheckboxRowWidgetState extends State<CheckboxRowWidget> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {
        widget.onChange?.call(_value);
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
              widget.onChange?.call(_value);
              setState(() {
                _value = value!;
              });
            },
            activeColor: const Color(0xFF99BFD4),
            side: WidgetStateBorderSide.resolveWith(
              (states) => BorderSide(
                  color: _value ? AppThemeColor.blueColor : AppThemeColor.gris,),
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
          ),
          Flexible(
            child: AutoSizeText(
              widget.title,
              style: TextStyle(
                  color: _value ? AppThemeColor.black : AppThemeColor.gris,
                  fontSize: 15,),
              maxLines: widget.maxLines,
            ),
          ),
        ],
      ),
    );
}
