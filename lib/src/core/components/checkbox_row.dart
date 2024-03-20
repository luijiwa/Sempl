import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

class CheckboxRow extends StatelessWidget {
  const CheckboxRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
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
            (states) => const BorderSide(color: Color(0xFF99BFD4)),
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
        AutoSizeText(
          title,
          style: TextStyle(
              fontFamily: 'SourceSansPro',
              color: value ? Colors.black : AppThemeColor.gris,
              fontSize: 15),
          maxLines: 1,
        ),
      ],
    );
  }
}
