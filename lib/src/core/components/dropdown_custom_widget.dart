import 'package:flutter/material.dart';
import 'package:my_app/src/core/theme/theme.dart';

class DropdownCustomWidget extends StatelessWidget {
  const DropdownCustomWidget({
    super.key,
    required this.listItems,
    required this.hint,
  });
  final List<String> listItems;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: Colors.white,
      isExpanded: true,
      iconSize: 24,
      icon:
          const Icon(Icons.expand_more_rounded, color: AppThemeColor.blueColor),
      items: listItems
          .map((item) => DropdownMenuItem(
              value: item,
              child: Text(item,
                  maxLines: 1,
                  style: const TextStyle(
                    fontFamily: 'SourceSansPro',
                    overflow: TextOverflow.ellipsis,
                  ))))
          .toList(),
      hint: Text(hint,
          style: const TextStyle(
            fontFamily: 'SourceSansPro',
            color: AppThemeColor.gris,
          )),
      decoration: inputDecoration,
      value: null,
      onChanged: (_) {},
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Выберите из списка';
        }
        return null;
      },
      onTap: () {},
    );
  }
}
