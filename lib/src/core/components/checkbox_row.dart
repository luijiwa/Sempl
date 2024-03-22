import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class CheckboxRow extends StatelessWidget {
  const CheckboxRow({
    super.key,
    required this.title,
    required this.value,
    this.maxLines = 1,
  });
  final String title;
  final int maxLines;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: value,
          onChanged: (value) {},
          activeColor: const Color(0xFF99BFD4),
          side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(
                color: value ? AppThemeColor.blueColor : AppThemeColor.gris),
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
        Flexible(
          child: AutoSizeText(
            title,
            style: TextStyle(
                fontFamily: 'SourceSansPro',
                color: value ? Colors.black : AppThemeColor.gris,
                fontSize: 15),
            maxLines: maxLines,
          ),
        ),
      ],
    );
  }
}
